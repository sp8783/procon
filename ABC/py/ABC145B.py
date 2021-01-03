# -*- coding: utf-8 -*-
"""
Created on Sun Jan  5 21:39:30 2020

@author: sp8783
"""

n = int(input())
s = input()

if n%2!=0 :
    print("No")
elif s[:n//2]+s[:n//2] == s:
    print("Yes")
else:
    print("No")