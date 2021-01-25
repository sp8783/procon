# -*- coding: utf-8 -*-
"""
Created on Tue Jun 11 22:29:36 2019

@author: sp8783
"""

import re

content = input()
pattern = '^(dream|dreamer|erase|eraser)*$'
flag = re.match(pattern,content)
if flag:
    print("YES")
else:
    print("NO")