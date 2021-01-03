# -*- coding: utf-8 -*-
"""
Created on Thu Jun 13 17:42:15 2019

@author: sp8783
"""

s = input()
n = (len(s) - 1)

ans_lst = []
for i in range(2**n):
    op = ["+"] * n 
    for j in range(n):
        if ((i >> j) & 1):
            op[n-j-1] = ""
    formula = ""
    for num,opp in zip(s, op + [""]):
        formula += (num + opp)
    ans_lst = ans_lst + [eval(formula)]

print(sum(ans_lst))