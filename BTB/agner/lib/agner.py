# -*- coding: utf-8 -*-
import glob
import imp
import os
import subprocess
import sys
from argparse import ArgumentParser
import numpy as np

THIS_DIR = os.path.dirname(os.path.realpath(__file__))


def filter_match(tests, test, subtest):
    # Somewhat ropey 'wildcard' matching
    if not tests: return True
    for match in tests:
        if match == '%s.%s' % (test, subtest): return True
        if match == '%s.*' % (test,): return True
    return False


class Test(object):
    def __init__(self, name, runner, plotter):
        self.name = name
        self.runner = runner
        self.plotter = plotter


class Agner(object):
    def __init__(self):
        self._tests = {}
        self._cur_test = None

    def tests(self):
        return self._tests.keys()

    def subtests(self, test):
        return self._tests[test].keys()

    def add_tests(self, name, module):
        self._cur_test = name
        self._tests[name] = {}
        module.add_tests(self)
        self._cur_test = None

    def add_test(self, name, runner, plotter):
        self._tests[self._cur_test][name] = Test(name, runner, plotter)

    def run_tests(self, tests):
        results = {}
        for test, subtests in self._tests.iteritems():
            results[test] = {}
            for subtest, tester in subtests.iteritems():
                if not filter_match(tests, test, subtest): continue
                print "Running %s.%s ..." % (test, subtest)
                results[test][subtest] = tester.runner()
        return results

    # def plot_results(self, results, tests, alternative, callback=None):
    #     import matplotlib.pyplot as plt
    #     for test, subtests in results.iteritems():
    #         for subtest, result in subtests.iteritems():
    #             if not filter_match(tests, test, subtest): continue
    #             tester = self._tests[test][subtest]
    #             tester.plotter(result, alternative)
    #             if callback:
    #                 callback(test, subtest)
    def plot_results(self, results, tests, alternative, callback=None):
        import matplotlib
        matplotlib.use('Agg')  # 强制使用非交互式后端
        import matplotlib.pyplot as plt

        # 创建保存图表的目录
        output_dir = os.path.join(THIS_DIR, "..", "results")
        if not os.path.exists(output_dir):
            os.makedirs(output_dir)

        for test, subtests in results.iteritems():
            for subtest, result in subtests.iteritems():
                if not filter_match(tests, test, subtest): 
                    continue
                tester = self._tests[test][subtest]
                tester.plotter(result, alternative)
                
                # 保存为PNG文件
                fig = plt.gcf()
                # 使用旧式字符串格式化
                filename = os.path.join(output_dir, "{0}_{1}.png".format(test, subtest))
                fig.savefig(filename)
                plt.close(fig)  # 关闭图形释放内存
                
                if callback:
                    callback(test, subtest)
        

# def run_test(test, counters, init_once="", init_each="", repetitions=3, procs=1):
#     os.chdir(os.path.join(THIS_DIR, "..", "src"))
#     sys.stdout.flush()
#     subprocess.check_call(["make", "-s", "out/a64.o"])

#     with open("out/counters.inc", "w") as cf:
#         [cf.write("    DD %d\n" % counter) for counter in counters]

#     with open("out/test.inc", "w") as tf:
#         tf.write(test)

#     with open("out/init_once.inc", "w") as init_f:
#         init_f.write(init_once)

#     with open("out/init_each.inc", "w") as init_f:
#         init_f.write(init_each)

#     subprocess.check_call([
#         "nasm", "-f", "elf64", 
#         "-l", "out/b64.lst",
#         "-I", "out/",
#         "-o", "out/b64.o",
#         "-D", "REPETITIONS=%d" % repetitions,
#         "-D", "NUM_THREADS=%d" % procs,
#         "PMCTestB64.nasm"])
#     subprocess.check_call(["g++", "-o", "./src/out/test", "./src/out/a64.o", "src/out/b64.o", "-lpthread"])
#     result = subprocess.check_output(["out/test"])
#     results = []
#     header = None
#     for line in result.split("\n"):
#         line = line.strip()
#         if not line: continue
#         split = line.split(",")
#         if not header:
#             header = split
#         else:
#             results.append(dict(zip(header, [int(x) for x in split])))
#     return results

def run_test(test, counters, init_once="", init_each="", repetitions=3, procs=1):
    # 获取绝对路径
    src_dir = os.path.join(THIS_DIR, "..", "src")
    out_dir = os.path.join(src_dir, "out")
    
    # 切换到 src 目录
    os.chdir(src_dir)
    
    # 编译 a64.o
    subprocess.check_call(["make", "-s", os.path.join("out", "a64.o")])

    # 生成配置文件
    with open(os.path.join(out_dir, "counters.inc"), "w") as cf:
        [cf.write("    DD %d\n" % counter) for counter in counters]

    with open(os.path.join(out_dir, "test.inc"), "w") as tf:
        tf.write(test)

    with open(os.path.join(out_dir, "init_once.inc"), "w") as init_f:
        init_f.write(init_once)

    with open(os.path.join(out_dir, "init_each.inc"), "w") as init_f:
        init_f.write(init_each)

    # 编译 b64.o
    subprocess.check_call([
        "nasm", "-f", "elf64",
        "-l", os.path.join(out_dir, "b64.lst"),
        "-I", out_dir,
        "-o", os.path.join(out_dir, "b64.o"),
        "-D", "REPETITIONS=%d" % repetitions,
        "-D", "NUM_THREADS=%d" % procs,
        "PMCTestB64.nasm"
    ])

    # 链接可执行文件（使用绝对路径）
    subprocess.check_call([
        "g++", "-o", os.path.join(out_dir, "test"),
        os.path.join(out_dir, "a64.o"),
        os.path.join(out_dir, "b64.o"),
        "-lpthread"
    ])

    # 运行测试
    result = subprocess.check_output([os.path.join(out_dir, "test")])
    
    # 解析结果
    results = []
    header = None
    for line in result.split("\n"):
        line = line.strip()
        if not line:
            continue
        split = line.split(",")
        if not header:
            header = split
        else:
            results.append(dict(zip(header, [int(x) for x in split])))
    return results

class MergeError(RuntimeError):
    pass


def merge_results(previous, new, threshold=0.15):
    if previous == None: return new
    if len(previous) != len(new):
        raise RuntimeError("Badly sized results")
    for index in range(len(previous)):
        prev_item = previous[index]
        new_item = new[index]
        for key in prev_item.iterkeys():
            if key in new_item:
                delta = abs(prev_item[key] - new_item[key])
                delta_ratio = delta / float(prev_item[key])
                print key, delta_ratio
                if delta_ratio > threshold:
                    raise MergeError("Unable to get a stable merge for " + key)  # TODO better
        for key in new_item.iterkeys():
            if key not in prev_item:
                prev_item[key] = new_item[key]
    return previous


def print_test(*args, **kwargs):
    results = run_test(*args, **kwargs)
    for result in results:
        print result
