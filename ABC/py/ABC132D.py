# -*- coding: utf-8 -*-
"""
Created on Sat Jun 29 21:39:28 2019

@author: sp8783
"""

n,k = map(int,input().split())



    return result % (10**9+7)

for i in range(1,k+1):
    print(
            int(cmb(k-1, i-1) * cmb(n-k+1, i) % (10**9+7))
            )