#!/usr/bin/env python
# -*- coding: utf-8 -*-

# import os
# import subprocess
# import sys

# from lib.agner import *


# def btb_size_test(name, num_branches, align):
#     test_code = """
# %macro OneJump 0
# jmp %%next
# align {align}
# %%next:
# %endmacro

# jmp BtbLoop
# align 4 * 1024 * 1024; align to a 4MB boundary
# BtbLoop:
# %rep {num_branches}
# OneJump
# %endrep

# %rep 64
# nop
# %endrep
# """.format(num_branches=num_branches, align=align)
#     r = run_test(test_code, [1, 410, 403, 404], repetitions=100)
#     return min(r, key=lambda x: x['BaClrAny'])


# def plot(xs, ys, result, name, index):
#     import numpy as np
#     import matplotlib.pyplot as plt

#     if index:
#         ax = plt.subplot(2, 2, index)
#     else:
#         ax = plt.subplot(1, 1, 1)
#     ax.set_yscale('log', basey=2)
#     plt.title(name)
    
#     plt.xlabel("Branch count")
#     plt.ylabel("Branch alignment")
#     ax.xaxis.set_ticks(xs)
#     xs = np.array(xs + [xs[-1] + 1])
#     ys = np.array(ys + [ys[-1] * 2])
#     xx, yy = np.meshgrid(xs, ys)
#     result = np.array(result)
#     plt.pcolor(xx, yy, result)
#     plt.colorbar()


# def btb_test(nums, aligns, name):
#     resteer = []
#     early = []
#     late = []
#     core = []
#     for align in aligns:
#         resteer.append([])
#         early.append([])
#         late.append([])
#         core.append([])
#         for num in nums:
#             res = btb_size_test("BTB size test %d branches aligned on %d" % (num, align), num, align)
#             exp = num * 100.0 # number of branches under test
#             resteer[-1].append(res['BaClrAny'] / exp)
#             early[-1].append(res['BaClrEly'] / exp)
#             late[-1].append(res['BaClrL8'] / exp)
#             core[-1].append(res['Core cyc'] / exp)
#     return {'resteer': resteer, 'early': early, 'late': late, 'core': core}


# def btb_plot(nums, aligns, name, results, alt):
#     import matplotlib.pyplot as plt
#     fig = plt.figure()
#     locs, labels = plt.xticks()
#     plt.setp(labels, rotation=90)
#     plt.title(name)
#     fig.canvas.set_window_title(name)
#     if alt:
#         plot(nums, aligns, results['resteer'], "Front-end re-steers", 0)
#     else:
#         plot(nums, aligns, results['resteer'], "Front-end re-steers", 1)
#         plot(nums, aligns, results['early'], "Early clears", 2)
#         plot(nums, aligns, results['late'], "Late clears", 3)
#         plot(nums, aligns, results['core'], "Core cycles/branch", 4)


# def add_test(agner, nums, aligns, name):
#     test = lambda: btb_test(nums, aligns, name)
#     plot = lambda results, alt : btb_plot(nums, aligns, name, results, alt)
#     agner.add_test(name, test, plot)


# def add_tests(agner):
#     # attempt to find total size
#     add_test(agner, range(512, 9000, 512), [2, 4, 8, 16, 32, 64], "Total size")

#     # attempt to find set bits
#     add_test(agner, [3, 4, 5], [2**x for x in range(1, 24)],  "Bits in set")

#     # attempt to find number of ways : large leaps to ensure we hit the same set every time
#     add_test(agner, range(1,12), [2**x for x in range(1, 21)], "Number of ways")

#     # attempt to find number of addr bits : two branches very spread
#     add_test(agner, [2], [2**x for x in range(6, 28)], "Number of address bits for set")

#!/usr/bin/env python
# -*- coding: utf-8 -*-


# from __future__ import print_function, division
import os
import numpy as np
from lib.agner import *

def btb_size_test(name, num_branches, align):
    # align1 = align / 32
    test_code = """
%macro OneJump 0
jmp %%next
align {align}
%%next:
%endmacro

jmp BtbLoop
align 4 * 1024 * 1024; align to a 4MB boundary
BtbLoop:
%rep {num_branches}
OneJump
%endrep

%rep 64
nop
%endrep
""".format(num_branches=num_branches, align=align)
    r = run_test(test_code, [1, 410, 403, 404], repetitions=10)
    return min(r, key=lambda x: x['BaClrAny'])

def btb_test(nums, aligns, name):
    resteer = []; early = []; late = []; core = []
    for align in aligns:
        resteer.append([]); early.append([]); late.append([]); core.append([])
        for num in nums:
            res = btb_size_test("BTB test {} branches @{}".format(num, align), num, align)
            # res = btb_size_test(f"BTB test {num} branches @{align}", num, align)
            exp = num * 100.0
            resteer[-1].append(res['BaClrAny']/exp)
            early[-1].append(res['BaClrEly']/exp)
            late[-1].append(res['BaClrL8']/exp)
            core[-1].append(res['Core cyc']/exp)
    return {'resteer':resteer, 'early':early, 'late':late, 'core':core}

def plot_subfigure(xs, ys, data, title, position):
    """ 优化子图绘制 """
    import matplotlib.pyplot as plt
    ax = plt.subplot(2, 2, position)
    ax.set_yscale('log', basey=2)
    
    # 动态调整横坐标
    max_x = max(xs)
    if max_x > 1000:
        step = 1024 if max_x > 5000 else 512
        ax.set_xticks(range(0, max_x+step, step))
        plt.xticks(rotation=45, ha='right', fontsize=8)
    else:
        ax.set_xticks(xs)
        plt.xticks(rotation=30 if len(xs)>10 else 0, ha='right', fontsize=8)
    
    # 优化网格显示
    xs_ext = list(xs) + [xs[-1]+1] if xs else []
    ys_ext = list(ys) + [ys[-1]*2] if ys else []
    xx, yy = np.meshgrid(np.array(xs_ext), np.array(ys_ext))
    
    plt.pcolor(xx, yy, np.array(data))
    plt.title(title, fontsize=10, pad=12)
    plt.xlabel("Branch count", labelpad=10, fontsize=9)
    plt.ylabel("Alignment (bytes)", labelpad=10, fontsize=9)
    plt.colorbar(pad=0.02)

def btb_plot(nums, aligns, name, results, alt):
    """ 主绘图函数 """
    import matplotlib
    matplotlib.use('Agg')
    import matplotlib.pyplot as plt
    
    # 统一文件名格式处理
    safe_name = name.lower().replace(" ", "_").replace("-", "_")
    output_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "results"))
    # os.makedirs(output_dir, exist_ok=True)
    import errno  # 添加头部的导入

    # 创建目录（兼容 Python 2.7）
    try:
        os.makedirs(output_dir)
    except OSError as e:
        if e.errno != errno.EEXIST:  # 如果目录已存在，忽略错误
            raise  # 其他错误重新抛出
    
    # 优化画布布局
    fig = plt.figure(figsize=(24, 12), dpi=100)
    # plt.suptitle(f"{name} Analysis", y=0.95, fontsize=12)
    plt.suptitle("{} Analysis".format(name), y=0.95, fontsize=12)
    plt.subplots_adjust(left=0.06, right=0.94, bottom=0.12, top=0.88, 
                      wspace=0.2, hspace=0.3)

    if alt:
        self_contained_plot(nums, aligns, results['resteer'], "Re-steers Analysis")
        # plt.savefig(os.path.join(output_dir, f"{safe_name}_alt.png"), 
        #            bbox_inches='tight', dpi=150)
        # 使用 .format() 方法
        plt.savefig(os.path.join(output_dir, "{0}_alt.png".format(safe_name)), 
           bbox_inches='tight', dpi=150)
    else:
        plot_subfigure(nums, aligns, results['resteer'], "Front-end Re-steers", 1)
        plot_subfigure(nums, aligns, results['early'], "Early Clears", 2)
        plot_subfigure(nums, aligns, results['late'], "Late Clears", 3)
        plot_subfigure(nums, aligns, results['core'], "Core Cycles/Branch", 4)
        # plt.savefig(os.path.join(output_dir, f"{safe_name}_full.png"), 
        #            dpi=150, bbox_inches='tight')
        plt.savefig(os.path.join(output_dir, "{0}_full.png".format(safe_name)), 
                    dpi=150, bbox_inches='tight')
    
    # # 生成独立子图
    # for metric in ['resteer', 'early', 'late', 'core']:
    #     fig.clf()
    #     self_contained_plot(nums, aligns, results[metric], 
    #                        f"{metric.capitalize()} Analysis")
    #     plt.savefig(os.path.join(output_dir, f"{safe_name}_{metric}.png"), 
    #                dpi=150, bbox_inches='tight')
    # plt.close('all')
     # 生成独立子图
    for metric in ['resteer', 'early', 'late', 'core']:
        plt.figure(figsize=(16, 8), dpi=100)
        # 使用 .format() 替换 f-string
        self_contained_plot(nums, aligns, results[metric], "{} Analysis".format(metric.capitalize()))
        safe_metric = metric.lower().replace(" ", "_")
        # 使用 .format() 替换 f-string
        plt.savefig(os.path.join(output_dir, "{0}_{1}.png".format(safe_name, safe_metric)),
                dpi=150, bbox_inches='tight')
    plt.close()

# def self_contained_plot(xs, ys, data, title):
#     """ 独立子图深度优化 """
#     import matplotlib.pyplot as plt
#     plt.clf()  # 清空当前figure
#     ax = plt.gca()
    
#     # 智能刻度设置
#     max_x = max(xs)
#     step = 1024 if max_x > 5000 else 512 if max_x > 1000 else max(1, len(xs)//10)
#     ax.set_xticks(np.arange(min(xs), max_x+step, step))
#     plt.xticks(rotation=45, ha='right', fontsize=9)
    
#     # 优化显示范围
#     buffer = step * 0.2
#     ax.set_xlim(min(xs)-buffer, max_x+buffer)
    
#     plt.pcolor(np.array(data))
#     plt.title(title, fontsize=12, pad=15)
#     plt.xlabel("Branch Count", fontsize=10, labelpad=12)
#     plt.ylabel("Alignment (bytes)", fontsize=10, labelpad=12)
#     plt.colorbar(pad=0.05)
#     plt.grid(True, alpha=0.3)
def self_contained_plot(xs, ys, data, title):
    import matplotlib.pyplot as plt
    plt.clf()
    ax = plt.gca()

    # 验证数据维度
    data = np.array(data)
    assert data.shape == (len(ys), len(xs)), "Data shape mismatch!"
    
    # 设置坐标轴
    max_x = max(xs)
    step = 1024 if max_x > 5000 else 512
    ax.set_xticks(np.arange(min(xs), max_x + step, step))
    plt.xticks(rotation=45, ha='right', fontsize=9)
    
    # 设置颜色范围
    vmin, vmax = np.min(data), np.max(data)
    if vmin == vmax:  # 处理全零数据
        vmax += 1e-6  # 避免颜色条崩溃
    
    # 绘制热力图
    heatmap = plt.pcolor(data, vmin=vmin, vmax=vmax)
    plt.colorbar(heatmap, pad=0.05)
    
    # 设置标题和标签
    plt.title(title, fontsize=12, pad=15)
    plt.xlabel("Branch Count", fontsize=10, labelpad=12)
    plt.ylabel("Alignment (bytes)", fontsize=10, labelpad=12)
    plt.grid(True, alpha=0.3)

def add_test(agner, nums, aligns, name):
    agner.add_test(
        name.lower().replace(" ", "_"),
        lambda: btb_test(nums, aligns, name),
        lambda results, alt: btb_plot(nums, aligns, name, results, alt)
    )

def add_tests(agner):
    # 统一测试名称格式
    add_test(agner, 
            nums=range(512, 9000, 512),
            aligns=[2,4,8,16,32,64],
            # name="Total Size Analysis")
            name="total_size")
    
    add_test(agner,
            nums=[3,4,5],
            aligns=[2**x for x in range(1,10)],
            name="bits_in_set")
    
    add_test(agner,
            nums=range(1,12),
            aligns=[2**x for x in range(1,21)],
            name="number_of_ways")
    
    add_test(agner,
            nums=[2], 
            aligns=[2**x for x in range(6,30)],
            name="address_bits_for_set")