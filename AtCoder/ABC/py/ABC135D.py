# -*- coding: utf-8 -*-
"""
Created on Sun Jul 28 15:27:01 2019

@author: sp8783
"""
s = input()
lst = list(map(str, s))

ans = [[0]*13]*(len(s))

for i in range(len(s)):
    for l in range(13):
        if lst[i] == "?":
            for j in range(10):
                k = (j+l)%13
                ans[i][k] += ans[i-1][l-j]
                ans[i][k] = ans[i][k]%(10**9+7)            
        else:
            k = (int(lst[i-1])+l)%13
            ans[i][k] += ans[i-1][l-int(lst[i-1])]
            ans[i][k] = ans[i][k]%(10**9+7)
        
print(ans[len(s)][5])
        