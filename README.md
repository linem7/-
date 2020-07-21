# 基本思路
首先用rmarkdown生成一个模版mail_merge_handout.Rmd，然后在脚本中用rmarkdown包的render函数将.Rmd批量转成word或pdf

# 用到的工具
tidyverse一整套

# 其他说明
最难最难的其实是在Excel里面先把文字说明清楚，“info.csv”文件中除了用到的数据，还提前分析了这些数据的**结论**，例如：数据前几列收集了幼儿过去5次的自我效能感数据：SE1-SE5，还包括了SE1-SE5的线性拟合**斜率**，以及这五个时间点的**标准差**，用来衡量自我效能感变动的幅度，再根据这两项指标来判断幼儿是“快速上升”、“稳定上升”、“轻微下降”、“大幅下降”。

最后就是我是在别人https://github.com/matt-dray/mail-merge-2018 folk过来的，这种文件叫mail_merge，代码写得比我好看。感谢救了我。
# 大概效果是下面这样子
![image](https://github.com/linem7/Development-report/blob/master/images/1.png)
![image](https://github.com/linem7/Development-report/blob/master/images/2.png)
![image](https://github.com/linem7/Development-report/blob/master/images/3.png)
