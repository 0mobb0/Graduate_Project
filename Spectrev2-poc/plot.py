import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np
from scipy import stats
from pathlib import Path

# ==============================
# 配置参数（根据需求修改）
# ==============================
CSV_PATH = "./results_2000.csv"         # 输入文件路径
OUTPUT_IMAGE = "kde_analysis.png"  # 输出图片路径
FIG_SIZE = (12, 6)                # 图像尺寸（宽, 高）
BANDWIDTH_ADJUST = 0.3            # 带宽调整系数（0.1-1.0）
COLOR_PALETTE = "#4C72B0"         # 主色（建议使用ColorBrewer配色）
SHOW_STATS = True                 # 是否显示统计指标
DPI = 300                         # 输出分辨率

# ==============================
# 数据加载与预处理
# ==============================
def load_and_preprocess(file_path):
    """ 加载数据并进行有效性验证 """
    if not Path(file_path).exists():
        raise FileNotFoundError(f"CSV文件未找到: {file_path}")
    
    df = pd.read_csv(file_path)
    
    # 列名验证
    required_columns = ['Success Rate (%)']
    missing = set(required_columns) - set(df.columns)
    if missing:
        raise ValueError(f"CSV文件缺少必要列: {missing}")
    
    # 数据清洗
    df_clean = df[df['Success Rate (%)'].between(0, 100, inclusive='both')].copy()
    
    if df_clean.empty:
        raise ValueError("有效数据为空，请检查输入文件")
        
    return df_clean

# ==============================
# 可视化函数
# ==============================
def plot_kde_analysis(df, output_path):
    """ 生成专业KDE分析图 """
    plt.figure(figsize=FIG_SIZE, dpi=DPI)
    ax = plt.gca()
    
    # 计算自适应带宽
    data = df['Success Rate (%)']
    bw = BANDWIDTH_ADJUST * data.std()
    
    # 绘制KDE
    sns.kdeplot(data=data, 
               bw_adjust=BANDWIDTH_ADJUST,
               fill=True, 
               color=COLOR_PALETTE,
               alpha=0.6,
               linewidth=2,
               label=f'KDE (bw={bw:.1f})')
    
    # 绘制直方图叠加
    sns.histplot(data=data,
                bins=20,
                stat='density',
                color='#DDDDDD',
                edgecolor='white',
                alpha=0.4,
                label='频次分布')
    
    # 计算统计指标
    mean_val = data.mean()
    median_val = data.median()
    std_val = data.std()
    mode_val = data.mode()[0]
    
    # 添加统计标注
    if SHOW_STATS:
        # 绘制参考线
        plt.axvline(mean_val, color='#D62728', linestyle='--', linewidth=1.5, label=f'均值 ({mean_val:.1f}%)')
        plt.axvline(median_val, color='#2CA02C', linestyle='-.', linewidth=1.5, label=f'中位数 ({median_val:.1f}%)')
        
        # 修改后的统计文本框
        textstr = '\n'.join([
            f'Samples: {len(data):,}',
            f'Std Dev: {std_val:.1f}%',
            f'Mode: {mode_val:.1f}%',
            f'Kurtosis: {stats.kurtosis(data):.2f}',
            f'Skewness: {stats.skew(data):.2f}'
        ])
        
        ax.text(0.95, 0.95, textstr,
               transform=ax.transAxes,
               fontsize=9,
               verticalalignment='top',
               horizontalalignment='right',
               bbox=dict(boxstyle='round', facecolor='white', alpha=0.8))

    # 美化设置
    plt.title("Spectre-v2 Success Rate Distribution Analysis\n", 
             fontsize=14, pad=20, fontweight='semibold')
    plt.xlabel("Success Rate (%)", fontsize=10, labelpad=8)
    plt.ylabel("Probability Density", fontsize=10, labelpad=8)
    plt.xlim(-5, 105)
    plt.grid(axis='y', linestyle='--', alpha=0.6)
    
    # 保存输出
    plt.tight_layout()
    plt.savefig(output_path, bbox_inches='tight')
    print(f"分析图表已保存至: {Path(output_path).resolve()}")

# ==============================
# 主程序
# ==============================
if __name__ == "__main__":
    try:
        # 加载数据
        df = load_and_preprocess(CSV_PATH)
        
        # 生成可视化
        plot_kde_analysis(df, OUTPUT_IMAGE)
        
    except Exception as e:
        print(f"运行错误: {str(e)}")
        exit(1)