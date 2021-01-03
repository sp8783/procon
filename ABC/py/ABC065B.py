# -*- coding: utf-8 -*-
"""
Created on Wed Jun 12 21:10:08 2019

@author: sp8783
"""

n=int(input())
lst=[int(input()) for i in range(n)]

lst = list(map(lambda x: x-1, lst))
lst_p = [0]
tmp = 0
flag =True
for i in range(n+1):
    tmp = lst[tmp]
    if tmp == 1:
        print(i+1)
        flag = False
        break
if flag:
    print(-1)