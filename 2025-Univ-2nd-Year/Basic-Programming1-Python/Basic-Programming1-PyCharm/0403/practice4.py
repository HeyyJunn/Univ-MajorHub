numbers = []

while 1:
    temp = input("점수를 입력하세요:")
    if temp != "":
        numbers.append(int(temp))
    else:
        break


for score in numbers:
    if score < 70:
        print(str(score), "점, 면허증 취소입니다.")
    else:
        print(str(score), "점, 면허증 유지됩니다.")

