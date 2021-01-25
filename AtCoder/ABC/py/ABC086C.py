# -*- coding: utf-8 -*-
"""
Created on Tue Jun 11 22:46:11 2019

@author: sp8783
"""

n = int(input())
counts = 0
for i in range(n):
    t,x,y = map(int,input().split())
    if (x+y <= t) & ((x+y)%2 == t%2):
        counts += 1

if counts == n:
    print("Yes")
else:
    print("No")