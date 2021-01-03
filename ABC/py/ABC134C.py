# -*- coding: utf-8 -*-
"""
Created on Sat Jul 20 20:54:28 2019

@author: sp8783
"""
import copy

n=int(input())
lst=[int(input()) for i in range(n)]

ans = [max(lst)] * n

if lst.count(max(lst)) == 1:
    tmp = copy.deepcopy(lst)
    tmp.pop(lst.index(max(lst)))
    ans[lst.index(max(lst))] = max(tmp)

for l in ans:
    print(l)