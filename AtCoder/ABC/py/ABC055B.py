# -*- coding: utf-8 -*-
"""
Created on Wed Jun 12 19:44:37 2019

@author: sp8783
"""

n = int(input())

ans = 1
for i in range(1,n+1):
    ans = ans*i
    ans = ans%1000000007
print(ans)