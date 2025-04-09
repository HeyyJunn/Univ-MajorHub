plot(10:1) # 10 에서 1까지 감소하며
# 그래프를 그림

split.screen(c(2,1))
# 전체 화면을 두개의 행과 하나의 컬럼을 나눈다
split.screen(c(1,3), screen=2)
# 2번 스크린을 3덩이로 구분을 시킴
# 총 여섯개의 화면이 있게 됨

screen(1)
plot(10:1)
# 1번에 그림

screen(4)
plot(1:10)

erase.screen(4)
erase.screen(1)

plot(10:1)
close.screen(all=TRUE)

dev.off()
dev.copy(pdf,"samplegraph.pdf")
# 그래프를 pdf 로 저장하기


##################################################

# 산포도 (scatter chart)
# 데이터를 x 축과 y 축에 점으로 표현한 그래프
# 연속값을 ㅗ된 두 변수의 관계를 표현할 때 사용

x = seq(1,10,0.1)
y = exp(x)

plot(x,y)
title("Exponential value")

# plot(x,y, main="Title)
plot(x,y, 
     main="Exponential value",
     sub = "Sub value",
     xlab = "x", ylab="y",
     typel ="l", lty="dotdash",
     col = 2, lwd = 5)

##################################################

data(ToothGrowth)
head(ToothGrowth)

dim(ToothGrowth)
plot(ToothGrowth)

# 두번째 
# 비타민을 많이 먹으면 이가 길어진다 의 결론

plot(ToothGrowth$len, ToothGrowth$dose, main="Tooth ", xlab="Length", ylab="")
##################################################

# beside=T
# - 누적해서 그리지 말고
# - 옆에다 계소 그려라

# names.arg=c("")

# border: 막대 선 색상

B_QTY = c(110, 300, 150, 280, 310)
S_QTY = c(180, 200, 210, 190, 170)
P_QTY = c(210, 150, 260, 210, 70)

B_TYPE2 = matrix(c(B_QTY, S_QTY, P_QTY), 5 ,3)

barplot(B_TYPE2, main="ball",
        beside=T,
        names.arg=c("b", "s", "p"),
        border="blue",
        col=rainbow(5),
        ylim=c(0,400))
legend(16,400,c("season A", "season B", "season C", "season D", "season E", "season F"), cex = 0.8, fill=rainbow(5))
# 16, 400 인 위치에
# 그려라
# cex characte exxpanding을 얼마나 할거냐
# fill 색을 무지개색을 ㅗ채우거르ㅏ 
# 
# barplot(t(B_TYPE2),
#         xlab = "season",
#         names.arg=c("A", "B", "C", "D", "E")
#         

##################################################
x = c(1,2,3,4,5,6,7,8,9)
y = x * 2
z = x * 3
plot(x,y, type="o")
points(x,z,pch="+")
lines(x,z,col="blue")

plot(x,y,type="o", ylim = c(0,30))
points (x,z,pch="*")
lines(x,z,col="dark red")

##################################################

# 히스토그램 
b = c(1,2,1,4,3,5,4,5,3,2,5,6,7,2,8,5,9,3,5)
hist(b)

##################################################

# 파이 그래프
# 전체와 부분의 관계를 나타내는데 
T_sales = c(210, 110, 400, 550, 700, 130)
pie(T_sales, init.angle = 90, col = rainbow(length(T_sales)),
    main = "주간 매출 변동",
    labels = c("Mon", "Tue", "Wed", "Thur", "Fri", "Sat"))
legend(1, 1, c("Mon", "Tue", "Wed", "Thur", "Fri", "Sat"), 
       cex = 0.8, fill = rainbow(length(T_sales)))

##################################################
erase.screen()
library("plotrix")
week = c("Mon", "Tue", "Wed", "Thur", "Fri", "Sat")
ratio = round(T_sales / sum(T_sales) * 100, 1)
label = paste(week, "\n", ratio, "%")
pie3D(T_sales, main = "주간매출 동향", col = rainbow(length(T_sales)), 
      cex = 0.8, labels = label)
legend(-0.8, 1.0, c("Mon", "Tue", "Wed", "Thur", "Fri", "Sat"), 
       cex = 0.8, fill = rainbow(length(T_sales)))

# 추가 그래프
pie3D(T_sales, main = "aa", col = rainbow(length(T_sales)), 
      cex = 0.8, labels = label, explode = 0.05)
##################################################

# 상자 모양 차트 

A = c(110, 300, 150, 280, 310)
B = c(180, 200, 210, 190, 170)
C = c(210, 150, 260, 210, 70)

boxplot(A, B, C,
        col = c("yellow", "cyan", "green"),
        names = c("Baseball", "Soccerball", "Pingpongball"),
        horizontal = TRUE)


data(iris)
plot(iris$Sepal.Width)
sepal.stat1 = boxplot(iris$Sepal.Width)
sepa1.stat1

sepal.stat2 = boxplot(Sepal.width ~ Species, data=iris,
                      col = c("blue", "green", "red"),
                      xlab = "Iris Species")

boxplot(Sepal.Width ~ Species, data=iris, notch=T,
        col = c("blue", "green", "red"),
        xlab = "iris species",
        horizontal = TRUE)

##################################################

plot.new()
plot(-4:4, -4:4, type="n")

points(rnorm(200), rnorm(200), pch="+", col="red")

par(new = T)
points(rnorm(200), rnorm(200), pch="o", col="cyan")

##################################################

x = c(1,1,1,2,2,2,2,2,2,2,3,3,4,5,6)
y = c(2,1,4,2,3,2,2,2,2,2,2,1,1,1,1)

zz = data.frame(x,y)
sunflowerplot(zz)




##################################################

x1 = seq(-3,3,length=50)
x2 = seq(-4,4,length=60)
f = function(x1,x2){x1^2 + x2^2+ x1*x2}
y= outer(x1,x2,FUN=f)
persp(x1,x2,y)

# 등고선 그래프 contour

##################################################


##################################################

##################################################
