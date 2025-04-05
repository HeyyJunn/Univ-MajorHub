dim(iris) #데이터 dimension 정보
nrow(iris) #row  수
ncol(iris) #col 수
colnames(iris) #[1] "data.frame
class(iris) #데이터셋 자료 구조 확인
str(iris) # 데이터셋 요약 정보 보기
unique(iris[,5])

colSums(iris[,-5])
colMeans(iris[,-5])
rowSums(iris[,-5])
rowMeans(iris[,-5])

is.data.frame(iris)
is.matrix(iris)

state.x77
str(state.x77)
class(state.x77) #matrix array 매트릭스의 구성요소가 array 로 되어있다.
new_state = data.frame(state.x77)
new_state
class(new_state)
str(new_state) =