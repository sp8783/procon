# -*- coding: utf-8 -*-
"""
Created on Mon Dec 16 00:00:12 2019

@author: sp8783
"""

List = list(map(int,input().split()))

ans ="bust"
if sum(List) <= 21:
    ans = "win"

print(ans)