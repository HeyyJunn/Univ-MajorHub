x=int(input("Input a number: "))

ans = 0

itersleft = x

while itersleft != 0:
    ans = ans + x
    itersleft = itersleft - 1
    print("ans =", ans)

print(ans)
print(itersleft)



