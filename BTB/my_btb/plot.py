import matplotlib.pyplot as plt
import matplotlib.ticker as tik
import numpy as np

plt.rcParams['axes.unicode_minus'] = False 
plt.style.use('bmh')

# 读取数据
with open('data.txt', 'r') as f:
    cycles = [float(line.strip()) for line in f if line.strip()]

branch_nums = list(range(1, len(cycles)+1))

# 绘图配置
fig, ax = plt.subplots(figsize=(12,4))
plt.xlabel('Br Num')
plt.ylabel('Cycle per Br')
plt.title('Branch Prediction Latency')

# 坐标轴精细控制
ax.xaxis.set_major_locator(tik.MultipleLocator(2))  # 主刻度每2个分支
ax.xaxis.set_minor_locator(tik.AutoMinorLocator(2)) # 次刻度细分
ax.yaxis.set_major_locator(tik.MultipleLocator(1))  # Y轴主刻度间隔1
ax.yaxis.set_minor_locator(tik.AutoMinorLocator(5)) # 次刻度细分

# 动态设置范围
plt.xlim(0.5, len(cycles)+0.5)
plt.ylim(0, max(cycles)*1.2)

# 专业色彩配置
main_color = "#FF4500"  # 橙红色主视觉
# aux_color = "#00FFFF"   # 青色辅助

# 绘制主数据线
ax.plot(branch_nums, cycles,
        color=main_color,
        linestyle='-',
        linewidth=1.5,
        # marker='o',
        # markersize=4,
        # markerfacecolor=aux_color,
        # markeredgewidth=0.5
        )

# 辅助元素
ax.axhline(y=np.mean(cycles), linestyle='--', alpha=0.6)  # 平均线
# ax.fill_between(branch_nums, cycles, alpha=0.1, color=main_color)          # 填充区域

plt.savefig('branch_analysis.jpg', dpi=400, bbox_inches='tight')
# plt.show()