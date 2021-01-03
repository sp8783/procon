# -*- coding: utf-8 -*-
"""
Created on Wed Jun 12 19:58:48 2019

@author: sp8783
"""

n,k = map(int, input().split())

ans = 0
for i in range(n):
    if i == 0:
        ans = k
    else:
        ans = ans * (k-1)
        
print(ans)
    