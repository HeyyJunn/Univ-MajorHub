
x = int(input("Enter a number: "))
ans = 0

while ans ** 3 < abs(x):
    ans = ans + 1
if ans ** 3 != abs(x):
    print(x, 'is not a perfect cube')
else:
    if x < 0:
        ans = -ans
    print('cube root of', x, 'is', ans)
