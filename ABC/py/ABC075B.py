# -*- coding: utf-8 -*-
"""
Created on Wed Jun 12 18:08:26 2019

@author: sp8783
"""

h,w = map(int,input().split())
lst=[list(map(str, input())) for i in range(h)]

ans=lst

dxy = [(1,1),(1,0),(1,-1),(0,1),(0,-1),(-1,1),(-1,0),(-1,-1)]

for y in range(h):
    for x in range(w):
        if lst[y][x] == "#":
            continue
        c = 0
        for dx, dy in dxy:
            if x+dx < 0 or x+dx > w-1 or y+dy < 0 or y+dy > h-1:
                continue
            if lst[y+dy][x+dx] == "#":
                c += 1
        ans[y][x] = c

for row in ans:
    print("".join(list(map(str, row))))