#!/usr/bin/env gnuplot
# 用法: ./plot.sh 输入文件.csv "图表标题" 输出文件.png "Y轴单位" "图例标题"

# 参数验证
if (ARGC < 5) {
  print "Usage: ./plot.sh input.csv 'Title' output.png 'Y_Unit' 'Legend_Title'"
  exit
}

# 基础配置
set title ARG2 font ",18" offset 0,0.5
set terminal pngcairo enhanced size 1000,600 background rgb 'white'
set datafile separator ","

# 坐标轴样式
set xtics nomirror rotate by -45 font ",12"
set ytics nomirror font ",12"
set grid ytics xtics linecolor rgb "#e0e0e0"

# 标签设置
set xlabel "Number of Blocks" font ",14" offset 0,0.5
set ylabel "Latency (".ARG4.")" font ",14" offset 1.5,0

# 输出配置
set output ARG3
set key outside right top vertical Left reverse
set key title ARG5 font ",12" spacing 1.5

# 自动缩放
stats ARG1 nooutput
set xrange [STATS_min_x:STATS_max_x]
set yrange [0:STATS_max_y*1.1]  # 留10%顶部空间

# 动态绘制（自动适配列数）
plot for [i=2:STATS_columns] ARG1 \
  using 1:i \
  with lines \
  linewidth 2 \
  dashtype (i%4+1) \
  title columnheader(i)