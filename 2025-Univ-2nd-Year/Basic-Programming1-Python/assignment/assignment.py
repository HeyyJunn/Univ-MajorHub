first_name = input("Input your first name: ")
last_name = input("Input your last name: ")
birth_year = int(input("Input your birth year(e.g., 2020): "))
current_year = int(input("Input your current year(e.g., 2020): "))
gender = input("Input your gender (e.g., male or female): ")
school_id = input("Input your school-id(e.g.,20200015): ")

print("===============================")

print(f"My name is {first_name} {last_name}.")
print(f"I am {current_year - birth_year} year old {gender}.")
print("And I am a student of Data technology major in Myongji University!")
print(f"My student id is {school_id} and I am happy to join this major!")