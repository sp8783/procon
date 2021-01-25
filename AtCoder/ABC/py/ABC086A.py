# -*- coding: utf-8 -*-
"""
Created on Tue Jun 11 18:37:32 2019

@author: sp8783
"""

a,b = map(int, input().split())
c = a * b % 2
if c == 0:
    print("Even")
else:
    print("Odd")