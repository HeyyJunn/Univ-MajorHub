##### my code
def my_plus(num1, num2):
    return num1 + num2


user_input1, user_input2 = input("Enter a number: ").split()
result = my_plus(int(user_input1), int(user_input2))

print("Result is " + str(result))


#####
def my_plus_ans (x,y):
    return x + y
def my_minus_ans (x,y):
    return x - y
def my_multiply_ans (x,y):
    return x * y
def my_divide_ans (x,y):
    return x / y

print("Input two numbers: ")
x=int(input())
y=int(input())

print("Result is", my_plus_ans(x,y))
print("Result is", my_minus_ans(x,y))
print("Result is", my_multiply_ans(x,y))
print("Result is", my_divide_ans(x,y))