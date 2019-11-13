# AI整体流程：采集（问卷，网络数据） 预处理分析（确实） 清理（补全，统一格式） 训练（算法） 
# numpy:数据分析计算处理库; 各种维度计算；N维数组容器，矩阵
# pandas: 数据计算分析工具库;表格容器；
# scikit-learn: 机器学习库；
# matplotlib: 绘图库
# tensorflow: 机器学习模型库
# scipy: 科学计算函数库
# numpy, pandas, scipy简介: https://www.cnblogs.com/fengff/p/9948562.html

import numpy as np

arr1 = np.array([1,2,3,4])

print(arr1)
print(type(arr1))
zodiac_name = (u'摩羯座', u'水瓶座', u'双鱼座', u'白羊座', u'金牛座', u'双子座',
            u'巨蟹座', u'狮子座', u'处女座', u'天秤座', u'天蝎座', u'射手座')
zodiac_days = ((1, 20), (2, 19), (3, 21), (4, 21), (5, 21), (6, 22),
               (7, 23), (8, 23), (9, 23), (10, 23), (11, 23), (12, 23))

# print(type(zodiac_days))
# list1 = [(1,2),(2,3),(3,4)]
# np_array = np.array(list1)
# print(type(np_array))
# print(np_array)
# np1 = np.array((1,2,3))
# print(np1)
# np2 = np.array([1,2,3,4])
# print(np2)

# print(np1 == np2)
# print(np.arange((1,2,3)))

print(np.zeros((2,3)))
print(np.ones([2,3]))
np_ones = np.ones([2,3])
np_ones[0][0] = 3
print(np_ones + 4)