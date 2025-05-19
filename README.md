# 简要介绍
本工具是以本人的毕设选题完成的，仍有诸多不完善的地方。在此简要介绍一下工具的功能。
在顶层目录下一共有五个文件夹，分别是：
1、BTB：BTB模块测试，暂时能逆向BTB容量以及BTB组相连关联度以及组索引位。
2、log：运行测试的日志文件
3、PHR：PHR模块测试，暂时能逆向PHR容量。
4、result：测试结果文件
5、Spectrev2-poc：Spectre-v2模块测试

## BTB模块测试
这个文件夹下有2个测试文件夹，分别是agner、my_btb
### agner
此文件夹是参考引用了https://github.com/mattgodbolt/agner。
首先需要进行配置，尽管顶层目录下有自动运行的命令，但可能不同权限以及不同系统，所以最好手动配置，并且这个框架用的是python2，需要先配置好python2的环境。

```sh
#在src/driver目录下进行install.sh的执行
chomd a+x *.sh
make
./install.sh #或许需要root权限
```
安装好后就可以了，一共有"btb_size.total_size", "btb_size.number_of_ways", "btb_size.bits_in_set"这几个测试可选，在顶层目录的run.config中进行配置，结果生成的是热力图的形式。

这部分gadget是src/out下的test.inc，用的直接跳转分支。

```nasm

%macro OneJump 0
jmp %%next
align 64
%%next:
%endmacro

jmp BtbLoop
align 4 * 1024 * 1024; align to a 4MB boundary
BtbLoop:
%rep 8704
OneJump
%endrep

%rep 64
nop
%endrep

```

![image-20250423205819597](README/image-20250423205819597.png)

### my_btb
此文件夹参考引用了https://github.com/cloudflare/cloudflare-blog/tree/master/2021-05-branch-prediction。
```sh
chmod a+x *.sh
chmod a+x branch
#branch的运行需要分配大页
echo 1 | sudo tee /proc/sys/vm/nr_hugepages
make
```
此文件夹不怎么需要配置，branch是一个可执行文件，可以用来测试jmp在不同align的情况下的时间，plot.py则是用来将结果可视化的。
主测试则是btb_capacity_dev_x86.py以及btb_figure.py。

## PHR模块测试
此文件夹的测试主要是在phr_ length以及TestScripts
phr_length是用c实现的，但需要先安装pmu-reader，之后直接编译运行即可。
TestScripts是nasm以及python实现的，参考引用了https://github.com/jiegec/cpu-micro-benchmarks

```sh
chmod a+x *.sh2
```
直接运行my_phr_length.py即可。

## Spectre-v2模块测试
这个模块就是运行限制BTB索引的Spectre-v2的demo。
```sh
chmod a+x *.sh
chmod a+x spectrev2
make
```
可以在run_poc.sh中修改测试的次数和配置。

如果这些都配置好了，可以在顶层目录直接运行run.py，配置可以参考run.config。