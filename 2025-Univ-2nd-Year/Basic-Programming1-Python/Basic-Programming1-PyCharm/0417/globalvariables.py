# global variable

# 예시 / gloabl numCalls
# Global variable 은 정 필요한 경우가 아니면 될 수 있으면 사용하지 않음

# 피보나치
# 1,2,3,5,8,13, . . .
# 피보나치 함정 n+1

# omit the module name

from circle import *
area(4)

def fib(x):
    global numCalls
    numCalls += 1
    if x==0 or x==1:
        return 1
    else:
        return fib(x-1)+fib(x-2)

def testFib(n):
    for i in range(n+1):
        global numCalls
        numCalls = 0
        print('fib of', i, '=', fib(i))
        print('fib called', numCalls, 'times.')
testFib(0)