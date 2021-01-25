# -*- coding: utf-8 -*-
"""
Created on Wed Jun 12 20:58:03 2019

@author: sp8783
"""

a,b,c = map(int, input().split())

i = 1
while True:
    mod = a * i % b
    if mod == c:
        print("YES")
        break
    if i == 1:
        s_mod = mod
    elif s_mod == mod:
        print("NO")
        break
    i += 1
        