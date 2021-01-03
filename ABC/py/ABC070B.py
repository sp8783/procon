# -*- coding: utf-8 -*-
"""
Created on Wed Jun 12 19:22:30 2019

@author: sp8783
"""

a,b,c,d = map(int, input().split())
if b < c or d < a:
    ans = 0
else:
    ans = min(abs(c-b), abs(d-a), abs(b-a), abs(d-c))
print(ans)
