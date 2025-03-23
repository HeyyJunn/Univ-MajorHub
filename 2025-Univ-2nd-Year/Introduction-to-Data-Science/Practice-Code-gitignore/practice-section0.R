x<-2
x

y<-3
y

x+y

ls() # 현재 사용중인 모든 변수 보기

rm(list=ls()) # 현재 사용중인 모든 변수 삭제

head(iris) # 데이터의 앞부분을 출력
tail(iris) # 데이터의 뒷부분을 출력
nrow(iris) #행 개수를 확인
nrow(iris) # 열 개수를 확인
str(iris) # 데이터 구조를 요약해서 출력
dim(iris) # 행과 열의 차원(크기) 을 출력
View(iris) # 엑셀처럼 전체 데이터를 GUI 형태로 보여줌

