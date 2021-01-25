# -*- coding: utf-8 -*-
"""
Created on Thu Jun 13 16:20:13 2019

@author: sp8783
"""

n = int(input())
s = input()
s_min = s[1:].count("E")
s_now = s[1:].count("E")

for i in range(1,n):
    if s[i-1] == "E" and s[i] == "E":
        s_now -= 1
    if s[i-1] == "W" and s[i] == "W":
        s_now += 1
    s_min = min(s_min, s_now)
print(s_min)