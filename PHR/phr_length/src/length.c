#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <time.h>
#include "../libpmu/pmu.h"
#include "../libcache/cacheutils.h"

#define NUM_TRIES 10000

extern void dummy_branches(void);

uint64_t time_s, time_e;
int junk = 0;
uint64_t test_br_misp_times = 0;
uint64_t train_br_misp_times = 0;
uint64_t dummy_br_misp_times = 0;
uint64_t hexcode;
char str[4];
uint64_t eventcode = 0xff89; // 设置为周期计数器 BR_MISP_EXEC.ALL_CONDITIONAL
int pmu_1, pmu_2;
// gcc -o length ./length.c ../libpmu/pmu.c

// 计算分支预测失败率
double calculate_branch_miss_rate(int branch_misses)
{
    if (NUM_TRIES == 0)
    {
        return 0.0; // 避免除以零
    }
    return (double)branch_misses / NUM_TRIES;
}

void re_func(int k)
{
    uint64_t pmu_s, pmu_t, pmu_e;
    uint64_t lo, hi;
    asm volatile(
        "mfence\n\t"
        "rdpmc\n\t"
        "mfence\n\t"
        : "=a"(lo), "=d"(hi)
        : "c"(0)
        :);
    pmu_s = ((uint64_t)hi << 32 | lo);
    // pmu_x86_zero_pmc(0); // 清除计数器
    // if (k)
    // {
    //     junk++;
    // }

    asm volatile(
        // "mov eax, 0\n\t"    // 将0移动到eax寄存器
        "cmp $0, %[k]\n\t" // 比较eax和k
        // ".align 524288\n\t"
        "je lbl_train_br\n\t"
        // "nop\n\t"
        // ".align 128\n\t"
        "lbl_train_br:\n\t"
        "nop\n\t"
        :
        : [k] "r"(k) //, [i] "r"(i), [j] "r"(j)
    );

    // read PMC
    asm volatile(
        "mfence\n\t"
        "rdpmc\n\t"
        "mfence\n\t"
        : "=a"(lo), "=d"(hi)
        : "c"(0)
        :);
    pmu_e = ((uint64_t)hi << 32 | lo);
    // printf("pmu_s:%ld\n",pmu_s);
    // printf("pmu_e:%ld\n",pmu_e);
    train_br_misp_times += (pmu_e - pmu_s);
    // printf("test:%ld\n",pmu_t);

    asm volatile(
        "mfence\n\t"
        "rdpmc\n\t"
        "mfence\n\t"
        : "=a"(lo), "=d"(hi)
        : "c"(0)
        :);
    pmu_1 = ((uint64_t)hi << 32 | lo);

    // pmu_x86_zero_pmc(0); // 清除计数器
    asm volatile(
        ".rept 92\n\t"
        "jmp 1f\n\t"
        "1:\n\t"
        "nop\n\t"
        ".endr\n\t");

    // read PMC
    asm volatile(
        "mfence\n\t"
        "rdpmc\n\t"
        "mfence\n\t"
        : "=a"(lo), "=d"(hi)
        : "c"(0)
        :);
    pmu_2 = ((uint64_t)hi << 32 | lo);
    // dummy_br_misp_times += (pmu_2 - pmu_1);

    // read PMC
    asm volatile(
        "mfence\n\t"
        "rdpmc\n\t"
        "mfence\n\t"
        : "=a"(lo), "=d"(hi)
        : "c"(0)
        :);
    pmu_s = ((uint64_t)hi << 32 | lo);

    // if (k)
    //     junk++;

    asm volatile(
        "cmp $0, %[k]\n\t"   // 比较eax和k
        "je lbl_test_br\n\t" // test branch
        "lbl_test_br:\n\t"
        "nop\n\t"
        :
        : [k] "r"(k));

    // read PMC
    asm volatile(
        "mfence\n\t"
        "rdpmc\n\t"
        "mfence\n\t"
        : "=a"(lo), "=d"(hi)
        : "c"(0)
        :);
    pmu_e = ((uint64_t)hi << 32 | lo);

    // printf("pmu_s:%ld\n",pmu_s);
    test_br_misp_times += (pmu_e - pmu_s);
}

int main(int argc, char *argv[])
{
    int k;
    int iter = 0;
    int core = 0;
    hexcode = 0x410000 | eventcode;

    uint64_t pmu_value = 0;
    if (argc >= 2)
    {
        core = (int)strtoull(argv[1], NULL, 0);
    }
    else
    {
        printf("Core Number Error!");
        return 1;
    }

    // 顺序：先配置，启动和清零似乎没先后关系
    pmu_x86_setup_pmc(core, &hexcode, 1); // 配置 PMU 事件
    pmu_x86_start_pmc();                  // 启动 PMC 计数器
    // printf("计数器0:%ld\n",pmu_x86_readPMC(0));

    // printf("计数器1:%ld\n",pmu_x86_readPMC(1));

    for (iter = 0; iter < NUM_TRIES; iter++)
    {

        k = rand() % 2;
        re_func(k);
        // printf("第%d次：%ld\n",iter,train_br_misp_times);
    }

    // hex2str(hexcode, str, 4);
    // printf("0x%s: %ld (train_branches)\n", str, train_br_misp_times);
    double miss_rate1 = calculate_branch_miss_rate(train_br_misp_times);
    printf("miss_rate(train_branch):%.2f\n", miss_rate1);
    printf("-------------------------------------------------------\n");

    // printf("0x%s: %ld (test_branches)\n", str, test_br_misp_times);
    double miss_rate2 = calculate_branch_miss_rate((test_br_misp_times + train_br_misp_times) / 2);
    printf("miss_rate(test_branch):%.2f\n", miss_rate2);

    printf("dummy_br_misp_times:%ld\n", dummy_br_misp_times);
    return 0;
}
