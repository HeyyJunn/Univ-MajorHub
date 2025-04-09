def f(x):
    def g():
        x = 'abc'
        print('x =', x)
    def h():
        z = x
        print('z =', z)
        x = x + 1
        print('x =', x)
    h()
    g()
    print('x =', x)
    return g

x = 3
z = f(x)
print('x =', x)
print('z =', z)
z()

# function body  는 x=x+1 부터
# h() 의 z 에서 x 가 없다면 가장 가까운 x 로 assign
# pdf 20 page
#