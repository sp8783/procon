# -*- coding: utf-8 -*-
"""
Created on Tue Jun 11 21:40:29 2019

@author: sp8783
"""

n,a,b = map(int, input().split())

result = 0
for i in range(n+1):
    tmp = list(map(int, str(i)))
    if (a <= sum(tmp)) & (sum(tmp) <= b):
        result = result + i
print(result)
