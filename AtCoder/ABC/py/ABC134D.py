# -*- coding: utf-8 -*-
"""
Created on Sat Jul 20 20:54:28 2019

@author: sp8783
"""
import copy

n = int(input())
lst = list(map(int,input().split()))

tmp = copy.deepcopy(lst)

f_lst = list(range(n//2))[::-1]

for i in f_lst:
    a = (sum(tmp[i::i+1])-tmp[i]) % 2
    b = tmp[i]
    if a == b:
        tmp[i] = 0
    else:
        tmp[i] = 1
    
print(sum(tmp))
x = [i+1 for i, x in enumerate(tmp) if x == 1]
print(x)
print(*x)