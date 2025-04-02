# 테이블 형태의 데이터
# 1. 열이 하나의 변수로 접근이 되어야 한다
#   즉, 한 컬럼에 들어간 변수가 하나 이어야함 
# 2. 한 행이 독립된 관측치 이여야 함.
# 3.

# tidy data 로 데이터를 정제하기 위한 다양한 함수 제공

library(tidyr)
table4a
gather(table4a, '1999', '2000', key = 'year', value = "cases");

table2
spread(table2, type, count)

########################################

x = data.frame(x1=c("A", "B", "C", "D", "E"), x2 = c(1, NA, NA, 3, NA))
x
drop_na(x,x2)

########################################

x
fill(x, x2)

########################################

x
replace_na(x, list(x2 =2))

########################################

df = tibble(
  year = c(2010, 2010, 2010,2010,2012,2012,2012),
  qtr = c(1,2,3,4,1,2,3),
  revenue = c(10,20,30,40,NA,60,70)
)
df
df %>% complete(year=full_seq(year,1), qtr)

########################################

table3
separate(table3, rate, sep="/", into = c("cases", "pop"))

########################################

table3
separate_rows(table3, rate, sep="/")

########################################

unite(table5, century, year, col = "year", sep="")
unite(table5, year, century, col = "year", sep="")

########################################



