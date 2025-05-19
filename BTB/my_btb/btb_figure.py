import matplotlib.pyplot as plt
import matplotlib.ticker as tik
import numpy as np

current_address = "./"
#### import data
# get size
btbres_file = current_address+"btb_capacity.csv"

line_num = len(open(btbres_file,"r").readlines()) - 1
column_num = 0
with open(btbres_file,"r") as f:
    content = f.readline()
    content = f.readline()
    column_num = content.count(",")
f.close()

print(column_num)

# get data
br_itvl = []
br_size = []
br_lat = np.zeros((column_num, line_num), dtype=float)
cur_line = 0
with open(btbres_file,"r") as f:
    line = f.readline().strip("\n")
    while line:
        if(cur_line == 0):
            # br_itvl = line.split(",")
            br_itvl = [int(x) for x in line.split(",")[0:]]  # 跳过第一列（分支数量）
            # print(br_itvl)
            # del(br_itvl[0])
        else:
            tmp = line.split(",")
            br_size.append(tmp[0])
            for i in range(1,column_num+1):
                br_lat[i-1][cur_line-1] = tmp[i]
        cur_line = cur_line + 1
        line = f.readline().strip("\n")
f.close()

# plt.rcParams['font.sans-serif'] = ['SimHei']  # 用来正常显示中文标签
plt.rcParams['axes.unicode_minus'] = False 

#设定画布大小
plt.style.use('bmh')
# plt.style.use('ggplot')

fig,ax = plt.subplots(figsize=(12,4))

#添加标题
plt.xlabel('Br Num')
plt.ylabel('Cycle per Br')
plt.title('BTB Capacity')

#坐标轴重新赋值
plt.ylim(0,10)
plt.xscale("log",base=2)
xticks = [pow(2, i) for i in range(20)]
plt.xticks(xticks)
# plt.xlim([1,150])
# ax = plt.axes()
# ax.xaxis.set_major_locator(tik.MultipleLocator(16))

ax.set_axisbelow(True)
# ax.set_title('                                                                 BTB Capacity                                                                 ',
#     backgroundcolor='#3c7f99',color='white')
# plt.box(False)
# plt.grid()

# color_list = ["#2C4150","#6Fa0ac","#b5d3d9","#fceee2","#5d887b"]
# color_list = ["#705992","#a97399","#d68294","#f3bfca","#291f27"]
# color_list = [
#     "#705992",  # 原1号色（紫藤）
#     "#8B6C9E",  # 新增（薰衣草紫）
#     "#A97399",  # 原2号色（玫瑰紫）
#     "#C07F8F",  # 新增（藕荷色）
#     "#D68294",  # 原3号色（珊瑚粉）
#     "#E8979A",  # 新增（鲑鱼粉）
#     "#F3BFCA",  # 原4号色（樱花粉）
#     "#FFDAC1",  # 新增（杏色）
#     "#D4B098",  # 新增（陶土色）
#     "#B0907F",  # 新增（胡桃棕）
#     "#71635C",  # 新增（石板灰）
#     "#291F27"   # 原5号色（墨黑）
# ]
color_list = [
    # 基础光谱色
    "#FF0000",  # 纯红 - 最高可见性警示色
    "#FF4500",  # 橙红 - 过渡色相增强对比
    "#FFA500",  # 橙色 - 暖色调高亮标识
    "#FFD700",  # 金色 - 金属光泽对比
    
    # 冷色域强化
    "#00FF00",  # 荧光绿 - 高饱和警示色
    "#006400",  # 深绿 - 增强明度对比
    "#00FFFF",  # 青色 - 冷色域基准色
    "#0000FF",  # 纯蓝 - 标准三原色
    
    # 合成对比色
    "#4B0082",  # 靛蓝 - 深冷色对比
    "#9400D3",  # 深紫 - 过渡色相
    "#FF00FF",  # 品红 - 合成高能见度色
    "#800080",  # 紫色 - 降低明度保持色相
    
    # 极端对比
    "#39FF14",  # 荧光绿 - 高能见度辅助
    "#FF1493",  # 深粉 - 强视觉冲击
    "#000000",  # 纯黑 - 最大明度差
    "#FFFFFF"   # 纯白 - 背景基准色
]
print(br_itvl)
for i in range(0,column_num):
    # print(br_itvl[i])
    plt.plot(
        br_size, 
        br_lat[i],
        label=f"Br per {br_itvl[i]} Byte",  # 动态生
        color=color_list[i],
        linestyle='-',
        linewidth=1,
        marker='.',
        markersize=1
    )
    
plt.legend(
    loc='upper right',          # 将图例放在右上角
    bbox_to_anchor=(1.25, 1),   # 微调位置（若需要右侧外部）
    fontsize='small',           # 调整字体大小
    frameon=True,               # 显示边框
    ncol=1                      # 单列排列
)

plt.savefig(current_address+"btb_capacity.jpg", dpi=400, bbox_inches='tight')
# plt.savefig(current_address+"btb_capacity.jpg",
#             dpi=400,bbox_inches = 'tight')
