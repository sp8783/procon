# -*- coding: utf-8 -*-
"""
Created on Sun Jul  7 20:59:17 2019

@author: sp8783
"""

n = int(input())
s = list(map(int,input().split()))

ans = []

ans.append(
        int((sum(s) * 0.5 - sum(s[1::2]))*2)
        )
for i in range(n-1):
    ans.append(int((s[i]-ans[i]/2)*2))

print(*ans)