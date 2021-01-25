# -*- coding: utf-8 -*-
"""
Created on Thu Dec 26 23:30:04 2019

@author: sp8783
"""

n = int(input())
s,t = map(str,input().split())

ans = ""

for i in range(n):
    ans = ans + s[i] + t[i]

print(ans)