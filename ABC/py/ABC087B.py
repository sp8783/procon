# -*- coding: utf-8 -*-
"""
Created on Tue Jun 11 21:35:36 2019

@author: sp8783
"""

a = int(input())
b = int(input())
c = int(input())
X = int(input())

counts = 0
for i in range(a+1):
    for j in range(b+1):
        for k in range(c+1):
            total = 500 * i + 100 * j + 50 * k
            if X == total:
                counts += 1
print(counts)
                