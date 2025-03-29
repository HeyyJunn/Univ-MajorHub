str1 = input("input a string: ")

StartIndex = 0
EndIndex = 0

CheckStart = False

for i in range(len(str1)):
    if not CheckStart: # CheckStart False 일 때 실행
        if not (str1[i] >= 'a' and str1[i] <= 'z'): # 한글이라면
            StartIndex = i
            CheckStart = True
    if CheckStart and (str1[i] >= 'a' and str1[i] <= 'z'):
        EndIndex = i
        break

print("The result is:", str1[StartIndex:EndIndex])



