########################################

url = "https://vincentarelbundock.github.io/Rdatasets/csv/AER/CASchools.csv"
myCASchools = read.csv(url)
str(myCASchools)
head(myCASchools)

########################################

myTCASchools = as_tibble(myCASchools)
class(myTCASchools)

myTCASchools
