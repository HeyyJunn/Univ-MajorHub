
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
x = input()
y = int(input())
opcode = input("Input operation:")

start_index = 0

for i in range(start_index, len(x)):
    if x[i] in "0123456789":
        ans = True
    else:
        ans = False
        break

if opcode in "+-*/":
    op = True
else:
    op = False

if ans:
    x = int(x)
    if op:
        print("Result is", my_calculate(x,y,opcode))
    else:
        print("wrong operator")
else:
    print("wrong integer! Input the" + "First" + "intger again")
