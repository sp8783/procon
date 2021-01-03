# -*- coding: utf-8 -*-
"""
Created on Thu Jun 13 18:48:12 2019

@author: sp8783
"""

k,s = map(int,input().split())

counts = 0
for x in range(k+1):
    for y in range(k+1):
        if s-x-y >= 0 and s-x-y <= k:
            counts  += 1
print(counts)