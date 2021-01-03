# -*- coding: utf-8 -*-
"""
Created on Sun Jul 28 15:26:59 2019

@author: sp8783
"""

a,b = map(int,input().split())

if (a+b)%2 == 0:
    print(int((a+b)/2))
else:
    print("IMPOSSIBLE")