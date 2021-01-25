# -*- coding: utf-8 -*-
"""
Created on Wed Jun 12 19:05:03 2019

@author: sp8783
"""

h,w = map(int,input().split())
lst=[list(map(str, input())) for i in range(h)]

dxy = [(1,0),(0,1),(0,-1),(-1,0)]
flag = False

for y in range(h):
    for x in range(w):
        if lst[y][x] == ".":
            continue
        sum_count = len(dxy)
        dot_count = 0
        for dx,dy in dxy:
            if x+dx < 0 or x+dx > w-1 or y+dy < 0 or y+dy > h-1:
                sum_count -= 1
                continue
            if lst[y+dy][x+dx] == ".":
                dot_count += 1
        if sum_count == dot_count:
            flag = True
            break
    if flag:
        break

if flag:
    print("No")
else:
    print("Yes")
    
    