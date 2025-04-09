ggplot(data=mpg, 
       aes(
         x=displ, 
         y=hwy)
       ) + geom_point() + xlim(3,6) + ylim(10,30)

df_mpg = 
  mpg %>% 
  group_by(drv) %>% 
  summarise(mean_hwy = mean(hwy))

df_mpg

ggplot(data=df_mpg, 
       aes(
         x=drv, 
         y=mean_hwy)
       ) + geom_col()

# 빈도 막대 그래프
# - 값의 개수로 막대의 길이를 표현한 그래프
# driving 방식별 자동차 수
ggplot(data=mpg, aes(x=drv)) + geom_bar()

# 상자 그림
# drv 구동방식별 고속도리 연비

# •	중앙 선: 중앙값
# •	박스: Q1~Q3 사분위수 범위
# •	수염(whisker): 정상 범위의 최대/최소값
# •	점: 이상치 (outlier)

# ggplot(data=mpg, aes(x=drv, y=hwy)) + geom_boxplot()
# 전륜구동방식이 연비가 좋은 것으로 나타난다
# 존륜구동방식 같은 경우에는 이상치가 높으므로, 편차가 크다
# 전륜의 특정 모델 같은 경우에 연비가 극심히 좋지 않다
# 
# 후륜 구동 방식 같은 경우에는 큰 편차가 있지 않다
# 4x4 는 연비가 좋지 않은 경우가 많지만 

# 선그래프
# 시간에 따라 달라지는 데이터를 표현할 때 이용
# 시계열 그래프
# 시간에 따른 미국 실업자 수의 추이
ggplot(data=economics, aes(x=date, y=unemploy)) + geom_line() 

# violin graph
# boxplot 과 같이 중앙값, 사분위수, 분포범위를 확인할 수 있음
# violin plot 너비는 데이터 밀도를 나타냄
# boxplot 은 평균에 많이 몰려있는건 알 수 있지만
# - 세부적으로는 알기 힘듦

# viollin plot 은 직관적으로 확인 가능
ggplot(iris,
       aes(
         x=Species,
         y=Petal.Length)
      ) + geom_violin()
# verginica 평균에 비해서 위로 갈수록 점점 작아진다
# 꽃잎이 거대한 것들은 많ㅇ ㅣ없고 . . . 
# versicolor 은 평균을 기준으로 위쪽으로 바이올린 생성
# 이상치가 있기 때문에 ~..

# violin plot
p = ggplot(iris, aes(x = Species, y = Petal.Length)) + geom_violin()
p

# flip
p + coord_flip()

# trim
# trim 옵션: 밀도 끝까지 보여주기
ggplot(iris, aes(x = Species, y = Petal.Length)) + geom_violin(trim = FALSE)

# Add median and quartile (boxplot)
p + geom_boxplot(width = 0.1)

# jitter plot (흩뿌린 점 추가)
# jitter plot: 실제 데이터 점들을 약간 흔들어서 겹치지 않게 흩뿌림
# position_jitter(0.2): 흔들림 정도 설정
# 점의 모양은 shape = 16 (채워진 점)
p + geom_jitter(shape = 16, position = position_jitter(0.2))

# color (Species별 색깔 구분)
# Species 값으로 색칠
p <- ggplot(iris, aesy(x = Species, y = Petal.Length, fill = Species)) +
  geom_violin(trim = FALSE)
p


##################################################
library(ggplot2)
mpg = as.data.frame(mpg)
df = mpg %>% 
  filter(class=="suv") %>% 
  group_by(manufacturer) %>% 
  summarise(mean_cty=mean(cty)) %>% 
  arrange(desc(mean_cty)) %>% 
  head(5)
# arrange(desc(mean_cty))는 데이터프레임 안에서 행의 순서를 정렬

# reorder(manufacturer, -mean_cty)는 그래프에서 x축 순서를 정렬
ggplot(data=df,
       aes(
         x=reorder(manufacturer, -mean_cty),
         # x=manufacturer3, # 알파벳 순으로 정렬
         y=mean_cty
       )) + geom_col()

# subaru 를 제외하고는 거기서 거기
# 5개 중 3개는 일본

