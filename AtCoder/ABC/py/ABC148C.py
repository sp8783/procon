# -*- coding: utf-8 -*-
"""
Created on Thu Dec 26 23:35:03 2019

@author: sp8783
"""

import fractions

a,b = map(int,input().split())

ans = (a*b)//fractions.gcd(a,b)

print(ans)