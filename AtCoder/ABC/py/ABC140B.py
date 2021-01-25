# -*- coding: utf-8 -*-
"""
Created on Sun Jan  5 22:35:45 2020

@author: sp8783
"""

n = int(input())
a_lst = list(map(int,input().split()))
b_lst = list(map(int,input().split()))
c_lst = list(map(int,input().split()))
ans = 0

for i in range(n):
    ans += b_lst[a_lst[i]-1]
    if  i != 0 and a_lst[i] == a_lst[i-1] + 1:
        ans += c_lst[a_lst[i-1]-1]
        
print(ans)