# -*- coding: utf-8 -*-
"""
Created on Sun Jan  5 22:26:33 2020

@author: sp8783
"""

s = input()

if "L" in s[::2] or "R" in s[1::2]:
    print("No")
else:
    print("Yes")
