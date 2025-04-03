number = int(input("Enter a number: "))
epsilon = 0.01
ans = 0

low = 0
high = max(1, number)

while (abs(ans**2 - number) > epsilon):
    ans = (low + high)/2
    print("low = {}, high={}, ans={}".format(low, high, ans))

    if(ans**2 < number):
        low = ans
    else:
        high = ans
print("{}'s square root is {}".format(number, ans))







