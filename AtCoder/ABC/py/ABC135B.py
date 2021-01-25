# -*- coding: utf-8 -*-
"""
Created on Sun Jul 28 15:27:01 2019

@author: sp8783
"""

n=int(input())
lst = list(map(int,input().split()))

k = 0
for i in range(n):
    if lst[i] != i+1:
        k += 1

if k <= 2:
    print("YES")
else:
    print("NO")