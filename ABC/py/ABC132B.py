# -*- coding: utf-8 -*-
"""
Created on Sat Jun 29 20:59:21 2019

@author: sp8783
"""

n = int(input())
l = list(map(int,input().split()))

ans = 0

for i in range(n-2):
    tmp = list([l[i],l[i+1],l[i+2]])
    if max(tmp) != tmp[1] and min(tmp) != tmp[1]:
        ans += 1
print(ans)
