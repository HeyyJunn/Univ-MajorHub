#########################################

no <- c(1, 2, 3, 4)
name <- c("Apple", "Banana", "Peach", "Berry")
prices <- c(500, 200, 200, 50)
qty <- c(5, 2, 7, 9)

fruit = data.frame(No=no, Name=name, Prices=prices, QTY=qty)
rownames(fruit) = c("F1", "F2", "F3", "F4")

fruit

#########################################

fruit["F1", ]
fruit[1, ]

# 특정 열 추출
fruit$Name
fruit$QTY

# 여러 열 추출
fruit[, 2:3]

# 파생변수 생성
fruit$TotalPrice = fruit$Prices * fruit$QTY
fruit

#########################################

# 데이터 크기
dim(iris)          # [행, 열]
nrow(iris)         # 행 수
ncol(iris)         # 열 수
colnames(iris)     # 열 이름

# 구조 및 요약 정보
class(iris)        # 클래스 (data.frame)
str(iris)          # 구조 보기

# 특정 열의 고유값
unique(iris[, 5])  # Species 컬럼

# 5번째 열(Species)은 문자형이므로 제외
colSums(iris[, -5])     # 열별 합계
colMeans(iris[, -5])    # 열별 평균
rowSums(iris[, -5])     # 행별 합계
rowMeans(iris[, -5])    # 행별 평균

is.data.frame(iris)     # TRUE
is.matrix(iris)         # FALSE

#########################################

# 구조 보기
state.x77
str(state.x77)

# 클래스 확인
class(state.x77)  # "matrix"

# 매트릭스를 데이터프레임으로 변환
new_state = data.frame(state.x77)
new_state

str(new_state)
class(new_state)  # "data.frame"

# 처음 4개 열만 숫자형이므로 matrix로 변환 가능
class(iris)  # "data.frame"
new_iris_mat = as.matrix(iris[, 1:4])
new_iris_mat
class(new_iris_mat)  # "matrix"
