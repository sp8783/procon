# -*- coding: utf-8 -*-
"""
Created on Tue Jun 11 21:59:02 2019

@author: sp8783
"""

n = int(input())
lst = list(map(int, input().split()))

lst.sort(reverse=True)
print(sum(lst[::2]) - sum(lst[1::2]))