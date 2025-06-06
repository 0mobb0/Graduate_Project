import subprocess
from matplotlib import pyplot as plt
import numpy as np

# Reproduce Figure 2(a) of Half&Half
x_data = range(150)
y_data = []
for dummy_branches in x_data:
    output = subprocess.check_output(
        ["./my_phr_length.sh2", str(dummy_branches)], encoding="utf-8"
    )
    heading = False
    data = []
    for line in output.splitlines():
        parts = list(filter(lambda s: len(s) > 0, line.strip().split(" ")))
        if len(parts) > 0:
            if not heading:
                assert parts[5] == "BrMisCond"
                heading = True
            else:
                data.append(int(parts[4]))
    avg = np.average(np.array(data)) / 2000  # 2 branches, 1000 loops
    print(dummy_branches, f"{avg:.2f}")
    y_data.append(avg)

plt.plot(x_data, y_data)
plt.xlabel("Num. of Dummy Branches")
plt.ylabel("Miss Rate")
plt.yticks([0.25, 0.50])

plt.xticks(
    list(range(0, 200, 50)) + list(range(92, 93)),  # 原刻度+90-95
    rotation=45  # 防止密集刻度重叠
)
plt.xlim(0, 150)  # 强制x轴范围从0开始

plt.savefig("my_phr_length.png", bbox_inches="tight")  # 保存时自动调整边界