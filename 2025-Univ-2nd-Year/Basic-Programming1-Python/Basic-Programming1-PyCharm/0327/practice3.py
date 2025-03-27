input_string = input("Input a string: ")
count = len(input_string)

StartIndex = 0
EndIndex = 0

CheckStart = False
# CheckEnd = False

for i in range(len(input_string)):
    if not CheckStart and input_string[i] == 'a':
        StartIndex = i+1
        CheckStart = True
    # if not CheckEnd and input_string[i] == 'z':
    #     EndIndex = i
    #     CheckEnd = True
    if input_string[i] == 'z':
        EndIndex = i
        break

print("The result is: " + input_string[StartIndex:EndIndex])
