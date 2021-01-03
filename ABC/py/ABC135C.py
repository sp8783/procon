# -*- coding: utf-8 -*-
"""
Created on Sun Jul 28 15:27:01 2019

@author: sp8783
"""

n = int(input())
lst =[list(map(int,input().split())) for i in range(2)]

ans = 0

for i in range(n):
    if i == 0:
        k1 = min(lst[0][i], lst[1][i])
        k2 = min(lst[0][i+1], lst[1][i] - k1)
        ans += k1 + k2
    else:
        k1 = min(lst[0][i] - k2, lst[1][i])
        k2 = min(lst[0][i+1], lst[1][i] - k1)
        ans += k1 + k2

print(ans)
