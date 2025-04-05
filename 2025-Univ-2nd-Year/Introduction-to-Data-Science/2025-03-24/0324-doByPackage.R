########################################

summary(iris) # 데이터프레임을 컬럼 값에 따라 그룹으로 묶은 후 요약 값 계산

summaryBy(Sepal.Width+Sepal.Length~Species, iris)
# ~ 는 Species 를 기준으로

summaryBy(Petal.Width+Petal.Length~Species, iris)

########################################

order(iris$Sepal.Width)

orderBy(~Sepal.Width, iris)

########################################

sampleBy(~Species, frac=0.1, data=iris)

########################################

split(iris, iris$Species)

########################################

# subset : 주어진 조건을 만족하는 데이터를 선택한다.

# setosa 종만 추출
subset(iris, Species == "setosa")

# Sepal.Length > 5.0 AND Sepal.Width > 4.0인 경우만 추출
subset(iris, Sepal.Length > 5.0 & Sepal.Width > 4.0)

# 조건 만족 + 원하는 열만 선택
subset(iris, Sepal.Length > 5.0 & Sepal.Width > 4.0, 
       select = c("Petal.Length", "Petal.Width"))

########################################

# merge : 데이터를 공통된 값에 기준하여 병합한다. 
# ( 공통된 값이 아닌 것은 병합대상 에서 제외됨)

x = data.frame(name = c("a", "b", "c"), math = c(1, 2, 3))
y = data.frame(name = c("c", "b", "a"), english = c(4, 5, 6))

# 공통 열인 name을 기준으로 병합
merge(x, y)

########################################

with(iris, {
  print(mean(Sepal.Length))
  print(mean(Sepal.Width))
})

########################################

Sepal.Width   # Error

attach(iris)
head(Sepal.Width)  # 정상 동작

detach(iris)
Sepal.Width   # 다시 Error

########################################

# c 로 구성된 숫자벡터 에서 3보다 큰 수에 대한 인덱스를 반환

test3 = c(2,12,4,1,5,7,-11)

test3 > 3

which(test3 > 3)

# iris 데이터에 which 함수를 응용하여 Sepal.Length 변수가 큰 값을 추출
which_test1 = which(iris$Sepal.Length > 7)
which_test1

iris[which_test1, ]

########################################

attach(iris)

agg = aggregate(Sepal.Length, by=list(Species), mean)
agg = aggregate(Sepal.Length, by=list(Species), max)
detach(iris)
aggregate(iris[, -5], by=list(iris$))




