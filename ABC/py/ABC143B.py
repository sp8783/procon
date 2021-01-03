# -*- coding: utf-8 -*-
"""
Created on Sun Jan  5 21:56:30 2020

@author: sp8783
"""

n = int(input())
lst = list(map(int,input().split()))
ans = 0
for i in range(n):
    for j in range(i+1,n):
        ans = ans + lst[i]*lst[j]

print(ans)        