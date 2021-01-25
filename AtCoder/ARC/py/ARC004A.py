# -*- coding: utf-8 -*-
"""
Created on Thu Jun 13 17:17:34 2019

@author: sp8783
"""
import math

n = int(input())
lst =[list(map(int,input().split())) for i in range(n)]
ans_lst = []
for i in range(n-1):
    for j in range(1,n-i):
        tmp = math.sqrt((lst[i][0] - lst[i+j][0])**2 + (lst[i][1] - lst[i+j][1])**2)
        ans_lst = ans_lst + [tmp]
print(max(ans_lst))