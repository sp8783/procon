# -*- coding: utf-8 -*-
"""
Created on Sun Dec 15 22:36:58 2019

@author: sp8783
"""

m = int(input())
m = m/1000

ans = "00"

if m<0.1:
    ans = "00"
if m>=0.1 and m<=5:
    ans = str(m).replace('.','')[:2]
if m>=6 and m<=30:
    ans = str(int(m + 50))
if m>=35 and m<=70:
    ans = (m - 30) / 5 + 80
    ans = str(int(ans))
if m>70:
    ans = "89"
    
print(ans)