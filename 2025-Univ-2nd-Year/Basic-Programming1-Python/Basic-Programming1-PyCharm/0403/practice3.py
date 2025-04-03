numbers = [56, 87, 22, 90, 43, 57, 87, 26, 100, 35]
for score in numbers:
    if score < 70:
        print(str(score), "점, 면허증 취소입니다.")
    else:
        print(str(score), "점, 면허증 유지됩니다.")