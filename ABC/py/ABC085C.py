# -*- coding: utf-8 -*-
"""
Created on Tue Jun 11 22:09:15 2019

@author: sp8783
"""

n,y = map(int,input().split())

flag = False
for i in range(n+1):
    for j in range(n-i+1):
        total = 10000 * i + 5000 * j + 1000 * (n-i-j)
        if y == total:
            flag = True
            print("{} {} {}".format(i,j,(n-i-j)))
            break
    if flag:
        break
if flag == False:
    print("-1 -1 -1")

                