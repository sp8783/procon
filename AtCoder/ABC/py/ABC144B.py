# -*- coding: utf-8 -*-
"""
Created on Sun Jan  5 21:50:01 2020

@author: sp8783
"""

n = int(input())
flag = False

for i in range(1,10):
    for j in range(1,10):
        if n == i*j:
            print("Yes")
            flag = True
            break
    if flag:
        break

if not(flag):
    print("No")