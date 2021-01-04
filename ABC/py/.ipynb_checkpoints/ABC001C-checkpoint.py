# -*- coding: utf-8 -*-
"""
Created on Sun Dec 15 23:09:32 2019

@author: sp8783
"""
from decimal import Decimal, ROUND_HALF_UP, ROUND_HALF_EVEN

a,b = map(int,input().split())

Dir = "N"
W = ""

Dir_list = ["NNE","NE","ENE","E","ESE","SE","SSE","S","SSW","SW","WSW","W","WNW","NW","NNW"]
for i in range(15):
    if 11.25 + i*22.5 <= a/10 and 33.75 + i*22.5 > a/10:
        Dir = Dir_list[i]
        break


b = float(Decimal(str(b/60)).quantize(Decimal('0.1'), rounding=ROUND_HALF_UP))
if b >= 0.0 and b <= 0.2:
    W = 0
if b >= 0.3 and b <= 1.5:
    W = 1
if b >= 1.6 and b <= 3.3:
    W = 2
if b >= 3.4 and b <= 5.4:
    W = 3
if b >= 5.5 and b <= 7.9:
    W = 4
if b >= 8.0 and b <= 10.7:
    W = 5
if b >= 10.8 and b <= 13.8:
    W = 6
if b >= 13.9 and b <= 17.1:
    W = 7
if b >= 17.2 and b <= 20.7:
    W = 8
if b >= 20.8 and b <= 24.4:
    W = 9
if b >= 24.5 and b <= 28.4:
    W = 10
if b >= 28.5 and b <= 32.6:
    W = 11
if b >= 32.7:
    W = 12
    
if W == 0:
    Dir = "C"

print(str(Dir) + " " + str(W))