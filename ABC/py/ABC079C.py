# -*- coding: utf-8 -*-
"""
Created on Thu Jun 13 01:19:58 2019

@author: sp8783
"""

lst = list(map(str, input()))
n = len(lst) - 1
op_lst = ["+", "-"]
for i in range(2**n):
    op = ["-"] * 3
    for j in range(n):
        if ((i >> j) & 1):
            op[n-j-1] = op_lst[0]
    formula = ""
    for num,opp in zip(lst, op + [""]):
        formula += (num + opp)
    if eval(formula) == 7:
        print(formula + "=7")
        break