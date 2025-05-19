import subprocess
from matplotlib import pyplot as plt
import numpy as np

# Reproduce Figure 3(a) of Half&Half
x_data = range(12, 22)
y_data = []
for branch_align in x_data:
    output = subprocess.check_output(
        ["./my_branch.sh2", str(branch_align), "5"], encoding="utf-8"
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
    print(branch_align, 5, f"{avg:.2f}")
    y_data.append(avg)

plt.plot(x_data, y_data)
plt.xlabel("Branch alignment bits")
plt.ylabel("Miss Rate")
plt.yticks([0.25, 0.50])
plt.savefig("my_branch_1.png")
plt.cla()

# Reproduce Figure 3(b) of Half&Half
x_data = range(1, 10)
y_data = []
for target_align in x_data:
    output = subprocess.check_output(
        ["./my_branch.sh2", "20", str(target_align)], encoding="utf-8"
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
    print(20, target_align, f"{avg:.2f}")
    y_data.append(avg)

plt.plot(x_data, y_data)
plt.xlabel("Target alignment bits")
plt.ylabel("Miss Rate")
plt.yticks([0.25, 0.50])
plt.savefig("my_branch_2.png")