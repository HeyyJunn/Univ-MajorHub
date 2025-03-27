print("# Compound boolean expressions #")
# 변수 값 설정
x = 10
y = 8
z = 5

# 최솟값 판단
if x < y and x < z:
    print('x is least')
elif y < z:
    print('y is least')
else:
    print('z is least')

print("# opeartor & operand #")
# opeartor *
# operand 3,4
a = "hi"
print(3*a)


print('abc'[1:3]) # bc
print('abc'[0:len('abc')]) #abc
print('abc'[1:]) #bc

x = 3
ans = 0
itersLeft = x
while itersLeft != 0:
    ans = ans + x
    itersLeft -= 1

print(ans)


