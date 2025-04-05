number_list = []
sqrt_list = []
epsilon = 0.01

while 1:
    number = input("숫자를 입력하세요: ")
    if number == "EOF":
        break
    number_list.append(int(number))

for num in number_list:
    low = 0
    high = max(1, int(num))
    sqrt = (high + low) / 2

    while abs(sqrt**2 - int(num)) > epsilon:

        print("low = {}, high = {}, sqrt = {}".format(low, high, sqrt))

        if sqrt**2 < int(num):
            low = sqrt
        else:
            high = sqrt

        sqrt = (high + low) / 2

    sqrt_list.append(sqrt)

    print("low = {}, high = {}, sqrt = {}".format(low, high, sqrt))
    print("{}'s square root is {}".format(num, sqrt))

print("The input numbers are", number_list)
print("The square roots of inputs are", sqrt_list)