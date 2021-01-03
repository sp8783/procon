# -*- coding: utf-8 -*-
"""
Created on Sun Jul  7 20:59:17 2019

@author: sp8783
"""

l,r = map(int,input().split())

a = l % 2019
b = r % 2019
tmp = 2018

if abs(l-r) >= 2019*2:
    print(0)
elif abs(l-r) >= 2019:
    print(min(a,b))
else:
    tmp = 2018
    for i in range(min(a,b),max(a,b)+1):
        for j in range(i+1,max(a,b)+1):
            tmp = min((i*j)%2019, tmp)
    print(tmp)
    