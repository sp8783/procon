# -*- coding: utf-8 -*-
"""
Created on Sat Jun 29 20:59:21 2019

@author: sp8783
"""

s = list(map(str, input()))

if s.count(s[0])==2:
    s_rm = [i for i in s if i != s[0]]
    if s_rm[0] == s_rm[1]:
        print("Yes")
    else:
        print("No")
else:
    print("No")


