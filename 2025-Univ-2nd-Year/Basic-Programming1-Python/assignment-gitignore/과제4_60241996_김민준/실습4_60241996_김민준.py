# exercise 실습 4
# Name: 김민준
# Collaborator: 없음
# Time Spent: 1hour
def my_plus_ans (x,y):
    return x + y
def my_minus_ans (x,y):
    return x - y
def my_multiply_ans (x,y):
    return x * y
def my_divide_ans (x,y):
    return x / y
def my_calculate(x, y, opcode="+"):
    if opcode =="+":
        return my_plus_ans(x, y)
    elif opcode == "-":
        return my_minus_ans(x, y)
    elif opcode == "*":
        return my_multiply_ans(x, y)
    elif opcode == "/":
        return my_divide_ans(x,y)

def InputInt(s):
    while True:
        number = input("Enter an integer: ")
        if isInt(str(number)):
            return int(number)
        else:
            print("Wrong integer! Input the " + s + " integer again!")


def isInt(x):
    if x[0] == "+" or x[0] == "-":
        if len(x) == 1:
            return False
        start_index = 1
    else:
        start_index = 0

    for i in range(start_index, len(x)):
        if x[i] not in "0123456789":
            return False
    return True

def InputOp():
    while True:
        opcode = input("Enter operation: ")
        if isOp(opcode):
            return opcode
        else:
            print("Wrong operator! Input the operator again!")
def isOp(x):
    if x in "+-*/":
        return True
    else:
        return False


x = InputInt("first")
y = InputInt("second")
Op = InputOp()
print(str(x) + Op + str(y), "is", my_calculate(x,y,Op))

