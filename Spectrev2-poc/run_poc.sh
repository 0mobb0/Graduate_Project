#!/bin/bash

# 配置参数
NUM_RUNS=10        # 运行次数
OUTPUT_FILE="results.csv"  # 输出文件名
POC_EXEC="./spectrev2"     # PoC程序路径

# 创建结果文件并写入标题行
echo "Run,Success Rate (%),Success Count,Total Bytes" > "$OUTPUT_FILE"

# 循环运行PoC
for ((i=1; i<=NUM_RUNS; i++))
do
    # 运行程序并捕获输出
    output=$($POC_EXEC 2>&1)
    
    # 提取关键信息
    success_rate=$(echo "$output" | grep -oP 'Total Success Rate: \K[0-9.]+')
    success_count=$(echo "$output" | grep -oP 'Total Success Rate: [0-9.]+% \(\K[0-9]+')
    total_bytes=$(echo "$output" | grep -oP 'Total Success Rate: [0-9.]+% \([0-9]+/\K[0-9]+')
    
    # 写入CSV文件
    echo "$i,$success_rate,$success_count,$total_bytes" >> "$OUTPUT_FILE"
    
    # 进度显示
    echo -ne "Completed runs: $i/$NUM_RUNS\r"
done

echo -e "\nAll $NUM_RUNS runs completed. Results saved to $OUTPUT_FILE"