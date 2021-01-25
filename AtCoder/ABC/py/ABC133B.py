# -*- coding: utf-8 -*-
"""
Created on Sun Jul  7 20:59:16 2019

@author: sp8783
"""
import math

n,d= map(int,input().split())
lst =[list(map(int,input().split())) for i in range(n)]

ans = 0

for i in range(n):
    for j in range(i+1,n):
        if i != j:          
            tmp = 0
            for k in range(d):
                tmp = tmp + (lst[i][k] - lst[j][k])**2
            dis = math.sqrt(tmp)
            if dis == math.floor(dis):
                ans += 1
print(ans)