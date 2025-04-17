# recursion 자기 자신을 호출
# Control + Command + G

def factorial(n):
    if n ==1:
        return 1
    else:
        return n * factorial(n-1)

print(factorial(4))



def sum(n):
    print("sum(" + n + ")")
    str_print = ""
    if n == 1:
        return 1
    else:
        str_print.append(str(n) + "+")
        return n + sum(n-1)

print(sum(5))

#####


def sumI(N):
    ans = 1
    while n > 1:
        ans += n
        n -= 1
    return ans
print()

def palindrome(str):
    if str == str[::-1]:
        return True
    return False

str = input("input palindrome: ")
print(palindrome(str))