# -*- coding: utf-8 -*-
"""
Created on Sun Jul  7 20:59:18 2019

@author: sp8783
"""

N,K = map(int,input().split())
edges = [list(map(int,input().split())) for i in range(N)]

def BFS(K,edges,N):
  roots=[ [] for i in range(N)]
  for a,b,c in edges:
    roots[a-1]+=[(b-1,c)]
    roots[b-1]+=[(a-1,c)]
  dist=[-1]*N
  stack=[]
  stack.append(K)
  dist[K]=0
  while stack:
    label=stack.pop(-1)
    for i,c in roots[label]:
      if dist[i]==-1:
        dist[i]=dist[label]+c
        stack+=[i]
  return dist