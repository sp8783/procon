# -*- coding: utf-8 -*-
"""
Created on Sun Jan  5 22:22:05 2020

@author: sp8783
"""

n,k = map(int,input().split())
lst = list(map(int,input().split()))

ans = 0
for i in range(n):
    if lst[i]>=k:
        ans += 1
print(ans)