# -*- coding: utf-8 -*-
"""
Created on Sat Jul 20 20:54:28 2019

@author: sp8783
"""
import math

n,d = map(int,input().split())

k = n/(d*2+1)
print(math.ceil(k))