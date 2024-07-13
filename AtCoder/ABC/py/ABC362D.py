import heapq

def dijkstra(n, adj, a, start):
    inf = float('inf')
    dp = [inf] * (n + 1)
    dp[start] = a[start - 1]
    hq = [(a[start - 1], start)]
    
    while hq:
        cost, v = heapq.heappop(hq)
        
        if cost > dp[v]:
            continue
        
        for u, c in adj[v]:
            new_cost = cost + a[u - 1] + c
            if dp[u] > new_cost:
                dp[u] = new_cost
                heapq.heappush(hq, (new_cost, u))
    
    return dp

n, m = map(int, input().split())
a = list(map(int, input().split()))
edges = [[] for _ in range(n + 1)]

for _ in range(m):
    u, v, b = map(int, input().split())
    edges[u].append((v, b))
    edges[v].append((u, b))

dist = dijkstra(n, edges, a, 1)

print(" ".join(map(str, dist[2:])))
