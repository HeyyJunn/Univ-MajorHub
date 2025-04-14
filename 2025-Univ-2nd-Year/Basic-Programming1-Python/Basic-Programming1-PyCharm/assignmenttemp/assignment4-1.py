# 전체금액 2프로 최소 결제 금액 납임금 비율
# balance 빚 잔액

# 빚의 잔액
balance = int(input("Enter the outstanding balance on your credit card: "))
# 연 이자율(고정)
annual_interest_rate = float(input("Enter the annual credit card interest rade as a decimal: "))
# 최소 납입 금액 비율(고정)
monthly_pay_rate = float(input("Enter the minimum monthly payment rate as a decimal: "))
# 월 이자율 (고정)
mon_interest_rate = annual_interest_rate / 12.0
total_paid = 0.0
print(mon_interest_rate)

for i in range(1, 13):
    # 최소 월 납부 금액
    min_month_paid = round(monthly_pay_rate * balance, 2)
    # 월 이자
    interest_paid = round(mon_interest_rate * balance, 2)
    # 실제 상환 금액
    principal_paid = round(min_month_paid - interest_paid, 2)
    # 남은 빚 잔액
    balance = round(balance - principal_paid, 2)
    # 총 납입액 누적
    total_paid = round(total_paid + min_month_paid, 2)

    print("Month: " + str(i))
    print("Minimum monthly payment: $" + str(min_month_paid))
    print("Principle paid: $" + str(principal_paid))
    print("Remaining balance: $" + str(balance))

print("RESULT")
print("Total amount paid: $" + str(total_paid))
print("Remaining balance: $" + str(balance))









