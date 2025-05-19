# import os
# import sys
# import csv
# import math

# class BTB_capacity:
#     def generate_header(num,dense):
#         header_file = open("test.h", "w")
#         if(num < 1024):
#             header_file.write(" #define REPEAT 10000LL \n")
#         elif(num < 1024 * 4):
#             header_file.write(" #define REPEAT 1000LL \n")
#         else:
#             header_file.write(" #define REPEAT 500LL \n")
#         header_file.write(" #define TEST_LOOP ")
#         header_file.write("asm(\\\n")
#         header_file.write("\".align 256 \\r\\n\\t\" \\\n")
#         header_file.write("\"2: \\n\\t\" \\\n")
#         for i in range(0,num):
#             header_file.write("\"1: jmp 1f\\n\\t\" \\\n")
#             header_file.write("\".long 0x9066\\n\\t\" \\\n")
#             for j in range(0,dense):
#                 header_file.write("\".long 0x00401f0f\\n\\t\" \\\n")
#                 # if(dense > 1): header_file.write("\".long 0x001f0f\\n\\t\" \\\n")
#                 # else         : header_file.write("\".long 0x001f0f\\n\\t\" \\\n")
#         header_file.write("\"1: \" \\\n")
#         header_file.write("\"dec %0 \\n\\t\" \\\n")
#         header_file.write("\"jne 2b \\n\\t\" \\\n")
#         header_file.write(" : \\\n :\"r\"(repeat) \\\n :);\n ")

#     # def br_num_inc(cur_num):
#     #     return cur_num + 1
#     def br_num_inc(cur_num):
#         if cur_num == 1 :
#             nxt_num = cur_num + 15
#         else:
#             nxt_num = cur_num + 16
#         # elif cur_num < 1024 :
#         #     nxt_num = cur_num + 8
#         # else:
#         #     nxt_num = cur_num + 32
#         return nxt_num
    
#     def interval_inc(cur_num):
#         nxt_num = 0
#         tmp = math.log2(cur_num + 1)
#         nxt_num = pow(2,tmp + 1)
#         return int(nxt_num) - 1

# ## test code

# # run test
# min_num = 0
# max_num = 1024 * 16
# interval_max = pow(2,9)
# interval = 0
# column_num = 0

# # for interval in intervals :
# print("\n>>>>> Running BTB Capacity Test")
# while interval < interval_max:
#     br_num = min_num
#     print("BTB test running interval:"+str(interval))
#     pos = 0
#     while br_num < max_num:
#         # print("------------ generate code ------------")
#         BTB_capacity.generate_header(br_num,interval)

#         # print("------------ compile code ------------")
#         command = "gcc test_x86.c -o test"
#         # command = "xmake --build btb_test"
#         os.system(command)

#         # print("------------ run test ------------")
#         command = "./test >> res.txt"
#         os.system(command)

#         # print("------------ control ------------")
#         br_num  = BTB_capacity.br_num_inc(br_num)
#         # print("br_num: ",br_num,"interval: ",interval)
#     column_num = column_num + 1
#     interval = BTB_capacity.interval_inc(interval)

# # collect data
# freq = float(sys.argv[1])
# res_file = open("res.txt","r")
# res_time = []
# lines = res_file.readlines()
# pos = 0
# interval = 0
# while interval < interval_max:
#     br_num = min_num
#     while br_num < max_num:
#         res_time.append(float(lines[pos])/(br_num+1)*freq)
#         br_num  = BTB_capacity.br_num_inc(br_num)
#         # print(res_time[pos])
#         pos = pos + 1
#     interval = BTB_capacity.interval_inc(interval)

# output_file = open("output.csv","w")
# csv_writer = csv.writer(output_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
# csv_writer.writerow([' ','16', '32', '64', '128', '256','512','1024'])

# loop_size = int(pos/column_num)
# br_num = min_num
# for i in range(0,loop_size):
#     row_content = []
#     row_content.append(br_num)
#     for j in range(0,column_num):
#         row_content.append(res_time[i+j*loop_size])
#     csv_writer.writerow(row_content)
#     br_num  = BTB_capacity.br_num_inc(br_num)

import os
import sys
import csv
import math

class BTB_capacity:
    @staticmethod
    def generate_header(num, dense):
        """生成测试头文件"""
        header_file = open("test.h", "w")
        header_file.write(f"#define REPEAT {BTB_capacity._get_repeat(num)}\n")
        header_file.write("#define TEST_LOOP asm(\\\n")
        header_file.write("\".align 256 \\r\\n\\t\" \\\n")
        header_file.write("\"2: \\n\\t\" \\\n")
        for _ in range(num):
            header_file.write("\"1: jmp 1f\\n\\t\" \\\n")
            header_file.write("\".long 0x9066\\n\\t\" \\\n")
            for __ in range(dense):
                header_file.write("\".long 0x00401f0f\\n\\t\" \\\n")
        header_file.write("\"1: \" \\\n")
        header_file.write("\"dec %0 \\n\\t\" \\\n")
        header_file.write("\"jne 2b \\n\\t\" \\\n")
        header_file.write(" : \\\n :\"r\"(repeat) \\\n :);\n")

    @staticmethod
    def _get_repeat(num):
        """动态调整重复次数"""
        if num < 1024:
            return 10000
        elif num < 4096:
            return 1000
        else:
            return 500

    @staticmethod
    def br_num_inc(cur_num):
        """分支数量递增策略"""
        return cur_num + 16 if cur_num > 1 else cur_num + 15

    # @staticmethod
    # def interval_inc(cur_num):
    #     """间隔递增策略"""
    #     return (1 << (int(math.log2(cur_num + 1)) + 1)) - 1
    def interval_inc(cur_num):
        """间隔递增策略（生成物理步长 4, 16, 32, 64... 字节）"""
        if cur_num == 0:
            return 3  # 对应物理步长 (3+1)*4 = 16 字节
        else:
            return (1 << (int(math.log2(cur_num + 1)) + 1)) - 1

def parse_arguments():
    """解析命令行参数"""
    if len(sys.argv) < 4:
        print("Usage: python3 btb_capacity_dev_x86.py <max_num> <max_interval_power> [freq]")
        print("Example: python3 btb_capacity_dev_x86.py 16384 9 3.5")
        sys.exit(1)
    
    max_num = int(sys.argv[1])
    max_interval_power = int(sys.argv[2])
    freq = float(sys.argv[3]) if len(sys.argv) > 3 else 1.0
    
    return max_num, max_interval_power, freq

def main():
    # 参数解析
    max_num, max_interval_power, freq = parse_arguments()
    
    # 初始化测试参数
    min_num = 0
    interval_max = (1 << max_interval_power) - 1  # 2^power -1
    interval = 0
    
    # 生成间隔序列
    intervals = []
    current_interval = 0
    while current_interval <= interval_max:
        intervals.append(current_interval)
        current_interval = BTB_capacity.interval_inc(current_interval)
    
    print(f"\n>>>>> Running BTB Capacity Test (Max entries: {max_num}, Max interval: {interval_max})")
    
    # 清理旧结果
    if os.path.exists("res.txt"):
        os.remove("res.txt")
    
    # 运行测试
    for interval in intervals:
        print(f"BTB test running interval: {interval}")
        br_num = min_num
        while br_num < max_num:
            BTB_capacity.generate_header(br_num, interval)
            os.system("gcc test_x86.c -o test -O2")  # 添加优化选项
            os.system("./test >> res.txt")
            br_num = BTB_capacity.br_num_inc(br_num)
    
    # 处理结果
    with open("res.txt", "r") as f:
        results = [float(line.strip()) for line in f if line.strip()]
    
    # 生成CSV
    with open("btb_capacity.csv", "w", newline='') as csvfile:
        writer = csv.writer(csvfile)
        
        # 动态生成表头
        # header = [f"{interval+1}" for interval in intervals]
        # writer.writerow(header)
        header = [f"{(interval+1)}" for interval in intervals]  # 显示物理步长（字节）
        writer.writerow(header)
        # 计算每行数据
        entries_per_col = len(results) // len(intervals)
        for i in range(entries_per_col):
            row = [min_num + i*16]
            for j in range(len(intervals)):
                idx = i + j*entries_per_col
                if idx < len(results):
                    normalized = (results[idx] / (min_num + i*16 + 1)) * freq
                    row.append(f"{normalized:.3f}")
                else:
                    row.append("N/A")
            writer.writerow(row)
    
    print("测试完成，结果已保存到 btb_capacity.csv")

if __name__ == "__main__":
    main()