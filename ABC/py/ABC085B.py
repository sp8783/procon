# -*- coding: utf-8 -*-
"""
Created on Tue Jun 11 22:05:23 2019

@author: sp8783
"""

n = int(input())
int_list = [input() for i in range(n)]

print(len(list(set(int_list))))