n = int(input())
points = []

for _ in range(n):
    l, r = map(int, input().split())
    points.append((l, 0))
    points.append((r, 1))

points.sort()

cnt = 0
ans = 0

for point, type in points:
    if type == 0:
        ans += cnt
        cnt += 1
    else:
        cnt -= 1

print(ans)
