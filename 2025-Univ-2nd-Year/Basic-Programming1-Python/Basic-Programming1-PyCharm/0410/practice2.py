
#####
def my_plus_ans (x,y):
    return x + y


def my_minus_ans (x,y):
    return x - y


def my_multiply_ans (x,y):
    return x * y


def my_divide_ans (x,y):
    return x / y


def my_calculate(x, y, opcode="+"):
    if opcode == "-":
        return my_minus_ans(x, y)
    elif opcode == "*":
        return my_multiply_ans(x, y)
    elif opcode == "/":
        return my_divide_ans(x,y)
    else:
        return my_plus_ans(x,y)


print("Input two numbers: ")
x = int(input())
y = int(input())
opcode = input("Input operation:")


print("Result is", my_calculate(x,y,opcode))
