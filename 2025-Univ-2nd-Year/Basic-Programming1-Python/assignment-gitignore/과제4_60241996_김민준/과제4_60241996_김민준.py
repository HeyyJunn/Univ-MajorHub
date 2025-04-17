# Homework Assignment 4
# Name: 김민준
# Collaborator: 없음
# Time Spent: 2 days

# 빚의 잔액
balance = int(input("Enter the outstanding balance on your credit card: "))
# 연 이자율(고정)
annual_interest_rate = float(input("Enter the annual credit card interest rate as a decimal: "))
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

# Problem 2

# 빚의 잔액
balance = (int(input("Enter the outstanding balance on your credit card: ")))
# 연 이자율(고정)
annual_interest_rate = float(input("Enter the annual credit card interest rate as a decimal: "))
# 월 이자율 (고정)
mon_interest_rate = annual_interest_rate / 12.0
min_month_payment = 10

check_bool = True
while check_bool:
    temp_balance = balance

    for i in range(12):
        temp_balance = temp_balance * (1 + mon_interest_rate) - min_month_payment

        if temp_balance <= 0:
            print("RESULT")
            print("Monthly payment to pay off debt in 1 year: " + str(min_month_payment))
            print("Number of months needed: " + str(i+1))
            print("Balance: " + str(round(temp_balance,2)))
            check_bool = False
            break
    min_month_payment += 10

# Problem 3 Requirement
# Using Binary(Bisection) Search to Make the Program Run Faster
balance = int(input("Enter the outstanding balance on your credit card: "))
annual_interest_rate = float(input("Enter the annual credit card interest rate as a decimal: "))

# 월 이율 = 연 이율 / 12
monthly_interest_rate = annual_interest_rate / 12.0
lower_bound = balance / 12.0
upper_bound = (balance * (1 + monthly_interest_rate) ** 12.0) / 12.0

epsilon = 0.01  # 오차범위

while (upper_bound - lower_bound) >= epsilon:
    test_balance = balance
    min_monthly_payment = (lower_bound + upper_bound) / 2.0

    for month in range(1,13):
        test_balance = test_balance * (1 + monthly_interest_rate) - min_monthly_payment
        if test_balance <= 0:
            final_month = month
            break

    if test_balance > 0:
        lower_bound = min_monthly_payment
    else:
        upper_bound = min_monthly_payment

print("RESULT")
print("Monthly payment to pay off debt in 1 year:", str(round(min_monthly_payment, 2)))
print("Number of months needed:", final_month)
print("Balance:", str(round(test_balance, 2)))