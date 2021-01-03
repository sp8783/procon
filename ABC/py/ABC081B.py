# -*- coding: utf-8 -*-
"""
Created on Tue Jun 11 18:54:51 2019

@author: sp8783
"""

n = int(input())
s = list(map(int, input().split()))

counts = 0
r = 0
while True:
    tmp = list(map(lambda x: x / 2, s))
    r = sum(map(lambda x: x%2, s))
    if r != 0:
        break
    s = tmp
    counts += 1
print(counts)