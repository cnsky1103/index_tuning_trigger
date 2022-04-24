# index_tuning_trigger

## 实验流程

1. 安装index_selection_evaluation

2. 调用一次index_selection_evaluation，并且保存query_generation的输出

3. 把query塞进autoencoder，随机生成权重，就得到了这一次workload的矩阵

4. 记录下这一次的configuration

5. 与上一次的configuration比较，如果不同，分类结果为1，否则为0（初始configuration为全0）

6. goto 2，循环epoch次

7. 训练分类器
