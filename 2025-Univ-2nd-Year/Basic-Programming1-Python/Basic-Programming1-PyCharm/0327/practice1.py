input_string = input("Input a string: ")
count = 0

for i in range(len(input_string)):
    if (input_string[i] <= "z") and (input_string[i] >= "a"):
        count += 1

print("Length of input string: ", len(input_string))
print("The number of lower letters are: ", count)

#######################################################

input_string = input("Input a string: ")
cnt = len(input_string)
print("Length of input string: ", len(input_string))

i = 0
lowerCnt = 0
while (i < cnt):
    if (input_string[i] <= "z") and (input_string[i] >= "a"):
        lowerCnt += 1
    i+=1
print("The number of lower letters are: ", lowerCnt)

print("Lenght of input string: ", cnt)