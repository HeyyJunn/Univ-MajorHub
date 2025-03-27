PI = 3.14

radius = int(input("Input an integer radius: "))
area = PI * radius**2


if radius <= 0:
    print("Wrong input!")
elif area >= 50:
    print("Very Big Circle!")
    print("area is ", area)
else:
    print("Normal Circle!")
    print("area is ", area)


