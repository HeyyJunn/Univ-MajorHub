########################################

# 데이터 가공: [5] 집단별 요약
# group_by(), summarize()

# 클래스에 따라서 grouping

CASchools = read.csv("https://vincentarelbundock.github.io/Rdatasets/csv/AER/CASchools.csv")
str(CASchools)
head(CASchools)
CASchools$mymean = ( CASchools$read + CASchools$math ) / 2

CASchools %>%
  group_by(county) %>%
  summarise(TS = sum(students)) %>%
  arrange(desc(TS)) %>%
  head(5)


CASchools %>%
  group_by(county) %>%
  summarise(TPS = mean(students / teachers)) %>%
  arrange(desc(TPS))
  head(5)
  
CASchools %>%
  group_by(county) %>%
  summarise(
    TS = sum(students),
    TT = sum(teachers),
    TPS = mean(students / teachers),
    Mincome = mean(income),
    Mmean = mean(mymean)) %>%
  arrange(desc(Mmean)) %>%
  head(10)


########################################

# 데이터 가공: [6] 합치기

# 데이터 생성
# left_join 가로로 합치기
test1 = data.frame(id = c(1, 2, 3, 4, 5),
                   midterm = c(60, 80, 70, 90, 85))

test2 = data.frame(id = c(1, 2, 3, 4, 5),
                   final = c(70, 83, 65, 95, 80))

# left join 수행
total = left_join(test1, test2, by = "id")

# 결과 출력
total



# 데이터프레임 생성
# bind_rows 세로로 합치기
group_a = data.frame(id = c(1, 2, 3, 4, 5), 
                     test = c(60, 80, 70, 90, 85))

group_b = data.frame(id = c(6, 7, 8, 9, 10), 
                     test = c(70, 83, 65, 95, 80))

# 세로로 합치기 (행 단위)
library(dplyr)
group_all = bind_rows(group_a, group_b)

# 결과 출력
group_all

########################################

name = data.frame(class = c(1,2,3,4,5), teacher = c("kim", "lee", "park", "choi","jung"))
name

myexam = read.csv("csv_exam.csv")
exam_new = left_join(myexam, name, by="class")
exam_new

########################################

library(ggplot2)
str(mpg)
head(mpg)

mpg = as.data.frame(mpg)
str(mpg)
head(mpg)

# 1
df = mpg %>% select(class,cty)
df_suv = df %>% filter(class=="suv")
df_compact = df %>% filter(class == "compact")
mean(df_suv$cty)
mean(df_compact$cty)

# 2
mpg %>% 
  filter(manufacturer == "audi") %>%
  arrange(desc(hwy)) %>%
  head(5)

# 3
mpg %>%
  filter(class == "compact") %>%
  group_by(manufacturer) %>%
  summarise(num = n()) %>%
  arrange(desc(num))

# 4
mpg %>%
  group_by(manufacturer, drv) %>%
  summarise(mean_cty = mean(cty)) %>%
  head(10)
########################################