# -*- coding: utf-8 -*-
"""
Created on Mon Dec 16 00:02:39 2019

@author: sp8783
"""

S = input()

a = S
b = S[::-1]
n = round(len(S)/2)

ans = 0
for i in range(n):
    if a[i] != b[i]:
        ans += 1

print(ans)