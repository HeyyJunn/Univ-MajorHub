# 문자형 벡터 생성
f = c("A", "B", "B", "O", "AB", "A")

# factor로 변환
f_factor = factor(f)

# 구조 확인
str(f) 
# chr [1:6] "A" "B" "B" "O" "AB" "A"
str(f_factor) 
# Factor w/ 4 levels "A","AB","B","O": 1 3 3 4 2 1
class(f_factor) 
# [1] "factor"

# 출력
f 
# [1] "A"  "B"  "B"  "O"  "AB" "A" 
f_factor 
# [1] A  B  B  O  AB A 
# Levels: A AB B O

# Factor 레벨 확인 : 사용 중인 범주값(레벨) 출력
levels(f_factor)
# [1] "A"  "AB" "B"  "O" 

# 특정 요소 확인
f[5]            # "AB"
f_factor[5]     # AB

# 요소 수정
f_factor[7] = "B"     # ✅ 기존 레벨이라 가능
f_factor[8] = "C"     # ❌ 없는 레벨이라 경고 발생

# 숫자로 변환
as.integer(f_factor)
# 출력 예: [1] 1 3 3 4 2 1 3 NA

#########################################

# 리스트 생성 (키-값 구조)
member <- list(
  name = "Lee",
  address = "seoul",
  tel = "01088881111",
  ssn = 010815
)

# 리스트 내용 확인
member
# $name
# [1] "Lee"
# $address
# [1] "seoul"
# $tel

# [1] "01088881111"
# $ssn
# [1] 10815

# 리스트의 특정 값 추출
member$name
member[1:3]

# 리스트에 값 추가
member$pay <- 100
member
# $pay
# [1] 100