########################################

library(dplyr)
exam = read.csv("csv_exam.csv")

# 데이터 가공: [1] 추출

exam %>% filter(class==1)

exam %>% filter(class!=1)

exam %>% filter(math > 50)

exam %>% filter(math > 90 | english > 90)

exam %>% filter (class %in% c(1,3,5))

# 데이터 가공: [2] 변수 추출

exam %>% select(class, english)

exam %>% select(-english)


# 데이터 가공 실습: 변수 추출
exam %>% filter(class==1) %>% select(english)

# 데이터 가공: [3] 정렬

exam %>% arrange(math)
# key 2개 descending 
exam %>% arrange(class, desc(math))

# 실습1 : 데이터셋 분석
# midwest 는 ggplot package 안에 있다. ggplot2::midwest

library("ggplot2")
midwest

# 아시아 인종의 비율을 알아야 하므로
# 전체 인구 대비 아시아 인구 백분율을 구해야함
# ratio : 전체의 평균

dim(midwest)
str(midwest)
head(midwest)

midwest$ratio = midwest$popasian / midwest$poptotal
x = mean(midwest$ratio)
midwest$grade = ifelse(midwest$ratio >= x, "large", "small")
table(midwest$grade)
qplot(midwest$grade)

# 아시아 인들이 몰려있다 ~..

midwest_new = midwest %>% 
  arrange(desc(midwest$ratio)) %>%  
  select(county,ratio) %>% 
  head(10)

midwest_new

write.csv(midwest_new, "asian_midwest.csv")

########################################

# 데이터 가공: [4] 추가

exam %>% mutate (
  total = math+english+science,
  mean = (math + english + science) / 3,
  test = ifelse (science >= 60, "pass", "fail")
) %>% arrange(desc(total))

########################################

CASchools = read.csv("https://vincentarelbundock.github.io/Rdatasets/csv/AER/CASchools.csv")
str(CASchools)
head(CASchools)

CASchools$mymean = ( CASchools$read + CASchools$math ) / 2
CA_mean = mean(CASchools$mymean)

CASchools %>% filter(mymean > CA_mean) %>% arrange(desc(mymean)) %>% head(10) %>% select(county,school,mymean)

# 데이터 가공: [5] 집단별 요약

exam %>%
  group_by(class) %>% 
  summarise(mean_math = mean(math),
  sum_math = sum(math),
  median_math = median(math),
  n=n())
