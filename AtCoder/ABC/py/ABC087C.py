# -*- coding: utf-8 -*-
"""
Created on Wed Jun 12 23:50:20 2019

@author: sp8783
"""

#from itertools import accumulate
#
#n = int(input())
#lst =[list(map(int,input().split())) for i in range(2)]
#
#lst_p = [lst[0][0]]
#for i in range(n):
#    a = sum(lst[0][i+1:]) + lst[1][-1]
#    b = sum(lst[1][i:])
#    if a > b:
#        if i == n-1:
#            lst_p = lst_p + [lst[1][-1]] 
#        else:
#            lst_p =  lst_p + [lst[0][i+1]]
#    else:
#        lst_p = lst_p + lst[1][i:]
#        break
#print(lst_p)
#print(list(accumulate(lst_p))[-1])


n = int(input())
lst =[list(map(int,input().split())) for i in range(2)]

ans = []
for i in range(n):
    if i != n-1:
        ans = ans + [sum(lst[0][:i+1]) + sum(lst[1][i:])]
    else:
        ans = ans + [sum(lst[0][:]) + lst[1][-1]]
print(max(ans))