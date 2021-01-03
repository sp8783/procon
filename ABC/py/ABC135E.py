# -*- coding: utf-8 -*-
"""
Created on Sun Jul 28 15:27:02 2019

@author: sp8783
"""

n = int(input())
lst = list(map(int,input().split()))

if n%2==0 and sum(lst)%2 == 1:
    print(-1)

