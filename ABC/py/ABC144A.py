# -*- coding: utf-8 -*-
"""
Created on Sun Jan  5 21:47:47 2020

@author: sp8783
"""

a,b = map(int,input().split())

if a>=10 or b>=10:
    print(-1)
else:
    print(a*b)