# -*- coding: utf-8 -*-
"""
Created on Wed Jun 12 20:14:58 2019

@author: sp8783
"""

a,b,x = map(int, input().split())

ans = b//x - a//x
if a%x == 0:
    ans += 1
print(ans)