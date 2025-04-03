number = int(input("Enter a number: "))
epsilon = 0.01
step = 0.01
ans = 0

while abs(ans**2 - number) >= epsilon and ans ** 2 < number:
    print("Current square root is", round(ans, 2))
    ans += step

if abs(ans**2 - number) >= epsilon:
    print("Failed on square root of", str(number) )
else:
    print(str(number) + "'s square root is", ans)









