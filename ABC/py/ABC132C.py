# -*- coding: utf-8 -*-
"""
Created on Sat Jun 29 20:59:21 2019

@author: sp8783
"""

n = int(input())
l = list(map(int,input().split()))

l_s = sorted(l)
diff = l_s[int(len(l_s)/2)] - l_s[int(len(l_s)/2)-1]
if diff > 0:
    print(diff)
else:
    print(0)