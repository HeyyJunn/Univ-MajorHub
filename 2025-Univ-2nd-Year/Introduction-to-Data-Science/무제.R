# 데이터 시뮬레이션
set.seed(123)
n <- 1000

age <- round(rnorm(n, mean = 35, sd = 10))
income <- round(rnorm(n, mean = 50000, sd = 15000))
gender <- sample(c("Male", "Female"), n, replace = TRUE)
city <- sample(c("Seoul", "Busan", "Incheon", "Daegu", "Daejeon"), n, replace = TRUE)
purchase <- rbinom(n, 1, prob = 0.4 + 0.01 * (income > 60000))

# 데이터프레임 생성
df <- data.frame(age, income, gender, city, purchase)

# 데이터 확인
head(df)
summary(df)
str(df)

# 연령대 파생 변수
df$age_group <- cut(df$age,
                    breaks = c(0, 20, 30, 40, 50, 100),
                    labels = c("10s", "20s", "30s", "40s", "50+"),
                    right = FALSE)

# 시각화
library(ggplot2)

# 연령대별 구매율
ggplot(df, aes(x = age_group, fill = factor(purchase))) +
  geom_bar(position = "fill") +
  labs(title = "연령대별 구매 비율", y = "비율", fill = "구매 여부") +
  theme_minimal()

# 성별 평균 소득
library(dplyr)

income_gender <- df %>%
  group_by(gender) %>%
  summarise(mean_income = mean(income), sd_income = sd(income))

print(income_gender)

# 도시별 구매자 수
purchase_by_city <- df %>%
  filter(purchase == 1) %>%
  group_by(city) %>%
  summarise(purchase_count = n()) %>%
  arrange(desc(purchase_count))

print(purchase_by_city)

# 구매 확률 로지스틱 회귀
model <- glm(purchase ~ age + income + gender, data = df, family = "binomial")
summary(model)

# 예측 결과 추가
df$predicted <- predict(model, type = "response")
df$predicted_label <- ifelse(df$predicted > 0.5, 1, 0)

# 정확도 계산
accuracy <- mean(df$predicted_label == df$purchase)
cat("모델 정확도:", round(accuracy * 100, 2), "%\n")

# 상관계수 시각화용 매트릭스
library(corrplot)
numeric_df <- df %>% select(age, income, predicted)
cor_matrix <- cor(numeric_df)
corrplot(cor_matrix, method = "circle", type = "lower", tl.cex = 0.8)

# 저장
write.csv(df, "analytics_output.csv", row.names = FALSE)


# 데이터 시뮬레이션
set.seed(123)
n <- 1000

age <- round(rnorm(n, mean = 35, sd = 10))
income <- round(rnorm(n, mean = 50000, sd = 15000))
gender <- sample(c("Male", "Female"), n, replace = TRUE)
city <- sample(c("Seoul", "Busan", "Incheon", "Daegu", "Daejeon"), n, replace = TRUE)
purchase <- rbinom(n, 1, prob = 0.4 + 0.01 * (income > 60000))

# 데이터프레임 생성
df <- data.frame(age, income, gender, city, purchase)

# 데이터 확인
head(df)
summary(df)
str(df)

# 연령대 파생 변수
df$age_group <- cut(df$age,
                    breaks = c(0, 20, 30, 40, 50, 100),
                    labels = c("10s", "20s", "30s", "40s", "50+"),
                    right = FALSE)

# 시각화
library(ggplot2)

# 연령대별 구매율
ggplot(df, aes(x = age_group, fill = factor(purchase))) +
  geom_bar(position = "fill") +
  labs(title = "연령대별 구매 비율", y = "비율", fill = "구매 여부") +
  theme_minimal()

# 성별 평균 소득
library(dplyr)

income_gender <- df %>%
  group_by(gender) %>%
  summarise(mean_income = mean(income), sd_income = sd(income))

print(income_gender)

# 도시별 구매자 수
purchase_by_city <- df %>%
  filter(purchase == 1) %>%
  group_by(city) %>%
  summarise(purchase_count = n()) %>%
  arrange(desc(purchase_count))

print(purchase_by_city)

# 구매 확률 로지스틱 회귀
model <- glm(purchase ~ age + income + gender, data = df, family = "binomial")
summary(model)

# 예측 결과 추가
df$predicted <- predict(model, type = "response")
df$predicted_label <- ifelse(df$predicted > 0.5, 1, 0)

# 정확도 계산
accuracy <- mean(df$predicted_label == df$purchase)
cat("모델 정확도:", round(accuracy * 100, 2), "%\n")

# 상관계수 시각화용 매트릭스
library(corrplot)
numeric_df <- df %>% select(age, income, predicted)
cor_matrix <- cor(numeric_df)
corrplot(cor_matrix, method = "circle", type = "lower", tl.cex = 0.8)

# 저장
write.csv(df, "analytics_output.csv", row.names = FALSE)


# 데이터 시뮬레이션
set.seed(123)
n <- 1000

age <- round(rnorm(n, mean = 35, sd = 10))
income <- round(rnorm(n, mean = 50000, sd = 15000))
gender <- sample(c("Male", "Female"), n, replace = TRUE)
city <- sample(c("Seoul", "Busan", "Incheon", "Daegu", "Daejeon"), n, replace = TRUE)
purchase <- rbinom(n, 1, prob = 0.4 + 0.01 * (income > 60000))

# 데이터프레임 생성
df <- data.frame(age, income, gender, city, purchase)

# 데이터 확인
head(df)
summary(df)
str(df)

# 연령대 파생 변수
df$age_group <- cut(df$age,
                    breaks = c(0, 20, 30, 40, 50, 100),
                    labels = c("10s", "20s", "30s", "40s", "50+"),
                    right = FALSE)

# 시각화
library(ggplot2)

# 연령대별 구매율
ggplot(df, aes(x = age_group, fill = factor(purchase))) +
  geom_bar(position = "fill") +
  labs(title = "연령대별 구매 비율", y = "비율", fill = "구매 여부") +
  theme_minimal()

# 성별 평균 소득
library(dplyr)

income_gender <- df %>%
  group_by(gender) %>%
  summarise(mean_income = mean(income), sd_income = sd(income))

print(income_gender)

# 도시별 구매자 수
purchase_by_city <- df %>%
  filter(purchase == 1) %>%
  group_by(city) %>%
  summarise(purchase_count = n()) %>%
  arrange(desc(purchase_count))

print(purchase_by_city)

# 구매 확률 로지스틱 회귀
model <- glm(purchase ~ age + income + gender, data = df, family = "binomial")
summary(model)

# 예측 결과 추가
df$predicted <- predict(model, type = "response")
df$predicted_label <- ifelse(df$predicted > 0.5, 1, 0)

# 정확도 계산
accuracy <- mean(df$predicted_label == df$purchase)
cat("모델 정확도:", round(accuracy * 100, 2), "%\n")

# 상관계수 시각화용 매트릭스
library(corrplot)
numeric_df <- df %>% select(age, income, predicted)
cor_matrix <- cor(numeric_df)
corrplot(cor_matrix, method = "circle", type = "lower", tl.cex = 0.8)

# 저장
write.csv(df, "analytics_output.csv", row.names = FALSE)


# 데이터 시뮬레이션
set.seed(123)
n <- 1000

age <- round(rnorm(n, mean = 35, sd = 10))
income <- round(rnorm(n, mean = 50000, sd = 15000))
gender <- sample(c("Male", "Female"), n, replace = TRUE)
city <- sample(c("Seoul", "Busan", "Incheon", "Daegu", "Daejeon"), n, replace = TRUE)
purchase <- rbinom(n, 1, prob = 0.4 + 0.01 * (income > 60000))

# 데이터프레임 생성
df <- data.frame(age, income, gender, city, purchase)

# 데이터 확인
head(df)
summary(df)
str(df)

# 연령대 파생 변수
df$age_group <- cut(df$age,
                    breaks = c(0, 20, 30, 40, 50, 100),
                    labels = c("10s", "20s", "30s", "40s", "50+"),
                    right = FALSE)

# 시각화
library(ggplot2)

# 연령대별 구매율
ggplot(df, aes(x = age_group, fill = factor(purchase))) +
  geom_bar(position = "fill") +
  labs(title = "연령대별 구매 비율", y = "비율", fill = "구매 여부") +
  theme_minimal()

# 성별 평균 소득
library(dplyr)

income_gender <- df %>%
  group_by(gender) %>%
  summarise(mean_income = mean(income), sd_income = sd(income))

print(income_gender)

# 도시별 구매자 수
purchase_by_city <- df %>%
  filter(purchase == 1) %>%
  group_by(city) %>%
  summarise(purchase_count = n()) %>%
  arrange(desc(purchase_count))

print(purchase_by_city)

# 구매 확률 로지스틱 회귀
model <- glm(purchase ~ age + income + gender, data = df, family = "binomial")
summary(model)

# 예측 결과 추가
df$predicted <- predict(model, type = "response")
df$predicted_label <- ifelse(df$predicted > 0.5, 1, 0)

# 정확도 계산
accuracy <- mean(df$predicted_label == df$purchase)
cat("모델 정확도:", round(accuracy * 100, 2), "%\n")

# 상관계수 시각화용 매트릭스
library(corrplot)
numeric_df <- df %>% select(age, income, predicted)
cor_matrix <- cor(numeric_df)
corrplot(cor_matrix, method = "circle", type = "lower", tl.cex = 0.8)

# 저장
write.csv(df, "analytics_output.csv", row.names = FALSE)


# 데이터 시뮬레이션
set.seed(123)
n <- 1000

age <- round(rnorm(n, mean = 35, sd = 10))
income <- round(rnorm(n, mean = 50000, sd = 15000))
gender <- sample(c("Male", "Female"), n, replace = TRUE)
city <- sample(c("Seoul", "Busan", "Incheon", "Daegu", "Daejeon"), n, replace = TRUE)
purchase <- rbinom(n, 1, prob = 0.4 + 0.01 * (income > 60000))

# 데이터프레임 생성
df <- data.frame(age, income, gender, city, purchase)

# 데이터 확인
head(df)
summary(df)
str(df)

# 연령대 파생 변수
df$age_group <- cut(df$age,
                    breaks = c(0, 20, 30, 40, 50, 100),
                    labels = c("10s", "20s", "30s", "40s", "50+"),
                    right = FALSE)

# 시각화
library(ggplot2)

# 연령대별 구매율
ggplot(df, aes(x = age_group, fill = factor(purchase))) +
  geom_bar(position = "fill") +
  labs(title = "연령대별 구매 비율", y = "비율", fill = "구매 여부") +
  theme_minimal()

# 성별 평균 소득
library(dplyr)

income_gender <- df %>%
  group_by(gender) %>%
  summarise(mean_income = mean(income), sd_income = sd(income))

print(income_gender)

# 도시별 구매자 수
purchase_by_city <- df %>%
  filter(purchase == 1) %>%
  group_by(city) %>%
  summarise(purchase_count = n()) %>%
  arrange(desc(purchase_count))

print(purchase_by_city)

# 구매 확률 로지스틱 회귀
model <- glm(purchase ~ age + income + gender, data = df, family = "binomial")
summary(model)

# 예측 결과 추가
df$predicted <- predict(model, type = "response")
df$predicted_label <- ifelse(df$predicted > 0.5, 1, 0)

# 정확도 계산
accuracy <- mean(df$predicted_label == df$purchase)
cat("모델 정확도:", round(accuracy * 100, 2), "%\n")

# 상관계수 시각화용 매트릭스
library(corrplot)
numeric_df <- df %>% select(age, income, predicted)
cor_matrix <- cor(numeric_df)
corrplot(cor_matrix, method = "circle", type = "lower", tl.cex = 0.8)

# 저장
write.csv(df, "analytics_output.csv", row.names = FALSE)


# 데이터 시뮬레이션
set.seed(123)
n <- 1000

age <- round(rnorm(n, mean = 35, sd = 10))
income <- round(rnorm(n, mean = 50000, sd = 15000))
gender <- sample(c("Male", "Female"), n, replace = TRUE)
city <- sample(c("Seoul", "Busan", "Incheon", "Daegu", "Daejeon"), n, replace = TRUE)
purchase <- rbinom(n, 1, prob = 0.4 + 0.01 * (income > 60000))

# 데이터프레임 생성
df <- data.frame(age, income, gender, city, purchase)

# 데이터 확인
head(df)
summary(df)
str(df)

# 연령대 파생 변수
df$age_group <- cut(df$age,
                    breaks = c(0, 20, 30, 40, 50, 100),
                    labels = c("10s", "20s", "30s", "40s", "50+"),
                    right = FALSE)

# 시각화
library(ggplot2)

# 연령대별 구매율
ggplot(df, aes(x = age_group, fill = factor(purchase))) +
  geom_bar(position = "fill") +
  labs(title = "연령대별 구매 비율", y = "비율", fill = "구매 여부") +
  theme_minimal()

# 성별 평균 소득
library(dplyr)

income_gender <- df %>%
  group_by(gender) %>%
  summarise(mean_income = mean(income), sd_income = sd(income))

print(income_gender)

# 도시별 구매자 수
purchase_by_city <- df %>%
  filter(purchase == 1) %>%
  group_by(city) %>%
  summarise(purchase_count = n()) %>%
  arrange(desc(purchase_count))

print(purchase_by_city)

# 구매 확률 로지스틱 회귀
model <- glm(purchase ~ age + income + gender, data = df, family = "binomial")
summary(model)

# 예측 결과 추가
df$predicted <- predict(model, type = "response")
df$predicted_label <- ifelse(df$predicted > 0.5, 1, 0)

# 정확도 계산
accuracy <- mean(df$predicted_label == df$purchase)
cat("모델 정확도:", round(accuracy * 100, 2), "%\n")

# 상관계수 시각화용 매트릭스
library(corrplot)
numeric_df <- df %>% select(age, income, predicted)
cor_matrix <- cor(numeric_df)
corrplot(cor_matrix, method = "circle", type = "lower", tl.cex = 0.8)

# 저장
write.csv(df, "analytics_output.csv", row.names = FALSE)

# 데이터 시뮬레이션
set.seed(123)
n <- 1000

age <- round(rnorm(n, mean = 35, sd = 10))
income <- round(rnorm(n, mean = 50000, sd = 15000))
gender <- sample(c("Male", "Female"), n, replace = TRUE)
city <- sample(c("Seoul", "Busan", "Incheon", "Daegu", "Daejeon"), n, replace = TRUE)
purchase <- rbinom(n, 1, prob = 0.4 + 0.01 * (income > 60000))

# 데이터프레임 생성
df <- data.frame(age, income, gender, city, purchase)

# 데이터 확인
head(df)
summary(df)
str(df)

# 연령대 파생 변수
df$age_group <- cut(df$age,
                    breaks = c(0, 20, 30, 40, 50, 100),
                    labels = c("10s", "20s", "30s", "40s", "50+"),
                    right = FALSE)

# 시각화
library(ggplot2)

# 연령대별 구매율
ggplot(df, aes(x = age_group, fill = factor(purchase))) +
  geom_bar(position = "fill") +
  labs(title = "연령대별 구매 비율", y = "비율", fill = "구매 여부") +
  theme_minimal()

# 성별 평균 소득
library(dplyr)

income_gender <- df %>%
  group_by(gender) %>%
  summarise(mean_income = mean(income), sd_income = sd(income))

print(income_gender)

# 도시별 구매자 수
purchase_by_city <- df %>%
  filter(purchase == 1) %>%
  group_by(city) %>%
  summarise(purchase_count = n()) %>%
  arrange(desc(purchase_count))

print(purchase_by_city)

# 구매 확률 로지스틱 회귀
model <- glm(purchase ~ age + income + gender, data = df, family = "binomial")
summary(model)

# 예측 결과 추가
df$predicted <- predict(model, type = "response")
df$predicted_label <- ifelse(df$predicted > 0.5, 1, 0)

# 정확도 계산
accuracy <- mean(df$predicted_label == df$purchase)
cat("모델 정확도:", round(accuracy * 100, 2), "%\n")

# 상관계수 시각화용 매트릭스
library(corrplot)
numeric_df <- df %>% select(age, income, predicted)
cor_matrix <- cor(numeric_df)
corrplot(cor_matrix, method = "circle", type = "lower", tl.cex = 0.8)

# 저장
write.csv(df, "analytics_output.csv", row.names = FALSE)

# 데이터 시뮬레이션
set.seed(123)
n <- 1000

age <- round(rnorm(n, mean = 35, sd = 10))
income <- round(rnorm(n, mean = 50000, sd = 15000))
gender <- sample(c("Male", "Female"), n, replace = TRUE)
city <- sample(c("Seoul", "Busan", "Incheon", "Daegu", "Daejeon"), n, replace = TRUE)
purchase <- rbinom(n, 1, prob = 0.4 + 0.01 * (income > 60000))

# 데이터프레임 생성
df <- data.frame(age, income, gender, city, purchase)

# 데이터 확인
head(df)
summary(df)
str(df)

# 연령대 파생 변수
df$age_group <- cut(df$age,
                    breaks = c(0, 20, 30, 40, 50, 100),
                    labels = c("10s", "20s", "30s", "40s", "50+"),
                    right = FALSE)

# 시각화
library(ggplot2)

# 연령대별 구매율
ggplot(df, aes(x = age_group, fill = factor(purchase))) +
  geom_bar(position = "fill") +
  labs(title = "연령대별 구매 비율", y = "비율", fill = "구매 여부") +
  theme_minimal()

# 성별 평균 소득
library(dplyr)

income_gender <- df %>%
  group_by(gender) %>%
  summarise(mean_income = mean(income), sd_income = sd(income))

print(income_gender)

# 도시별 구매자 수
purchase_by_city <- df %>%
  filter(purchase == 1) %>%
  group_by(city) %>%
  summarise(purchase_count = n()) %>%
  arrange(desc(purchase_count))

print(purchase_by_city)

# 구매 확률 로지스틱 회귀
model <- glm(purchase ~ age + income + gender, data = df, family = "binomial")
summary(model)

# 예측 결과 추가
df$predicted <- predict(model, type = "response")
df$predicted_label <- ifelse(df$predicted > 0.5, 1, 0)

# 정확도 계산
accuracy <- mean(df$predicted_label == df$purchase)
cat("모델 정확도:", round(accuracy * 100, 2), "%\n")

# 상관계수 시각화용 매트릭스
library(corrplot)
numeric_df <- df %>% select(age, income, predicted)
cor_matrix <- cor(numeric_df)
corrplot(cor_matrix, method = "circle", type = "lower", tl.cex = 0.8)

# 저장
write.csv(df, "analytics_output.csv", row.names = FALSE)

# 데이터 시뮬레이션
set.seed(123)
n <- 1000

age <- round(rnorm(n, mean = 35, sd = 10))
income <- round(rnorm(n, mean = 50000, sd = 15000))
gender <- sample(c("Male", "Female"), n, replace = TRUE)
city <- sample(c("Seoul", "Busan", "Incheon", "Daegu", "Daejeon"), n, replace = TRUE)
purchase <- rbinom(n, 1, prob = 0.4 + 0.01 * (income > 60000))

# 데이터프레임 생성
df <- data.frame(age, income, gender, city, purchase)

# 데이터 확인
head(df)
summary(df)
str(df)

# 연령대 파생 변수
df$age_group <- cut(df$age,
                    breaks = c(0, 20, 30, 40, 50, 100),
                    labels = c("10s", "20s", "30s", "40s", "50+"),
                    right = FALSE)

# 시각화
library(ggplot2)

# 연령대별 구매율
ggplot(df, aes(x = age_group, fill = factor(purchase))) +
  geom_bar(position = "fill") +
  labs(title = "연령대별 구매 비율", y = "비율", fill = "구매 여부") +
  theme_minimal()

# 성별 평균 소득
library(dplyr)

income_gender <- df %>%
  group_by(gender) %>%
  summarise(mean_income = mean(income), sd_income = sd(income))

print(income_gender)

# 도시별 구매자 수
purchase_by_city <- df %>%
  filter(purchase == 1) %>%
  group_by(city) %>%
  summarise(purchase_count = n()) %>%
  arrange(desc(purchase_count))

print(purchase_by_city)

# 구매 확률 로지스틱 회귀
model <- glm(purchase ~ age + income + gender, data = df, family = "binomial")
summary(model)

# 예측 결과 추가
df$predicted <- predict(model, type = "response")
df$predicted_label <- ifelse(df$predicted > 0.5, 1, 0)

# 정확도 계산
accuracy <- mean(df$predicted_label == df$purchase)
cat("모델 정확도:", round(accuracy * 100, 2), "%\n")

# 상관계수 시각화용 매트릭스
library(corrplot)
numeric_df <- df %>% select(age, income, predicted)
cor_matrix <- cor(numeric_df)
corrplot(cor_matrix, method = "circle", type = "lower", tl.cex = 0.8)

# 저장
write.csv(df, "analytics_output.csv", row.names = FALSE)

# 데이터 시뮬레이션
set.seed(123)
n <- 1000

age <- round(rnorm(n, mean = 35, sd = 10))
income <- round(rnorm(n, mean = 50000, sd = 15000))
gender <- sample(c("Male", "Female"), n, replace = TRUE)
city <- sample(c("Seoul", "Busan", "Incheon", "Daegu", "Daejeon"), n, replace = TRUE)
purchase <- rbinom(n, 1, prob = 0.4 + 0.01 * (income > 60000))

# 데이터프레임 생성
df <- data.frame(age, income, gender, city, purchase)

# 데이터 확인
head(df)
summary(df)
str(df)

# 연령대 파생 변수
df$age_group <- cut(df$age,
                    breaks = c(0, 20, 30, 40, 50, 100),
                    labels = c("10s", "20s", "30s", "40s", "50+"),
                    right = FALSE)

# 시각화
library(ggplot2)

# 연령대별 구매율
ggplot(df, aes(x = age_group, fill = factor(purchase))) +
  geom_bar(position = "fill") +
  labs(title = "연령대별 구매 비율", y = "비율", fill = "구매 여부") +
  theme_minimal()

# 성별 평균 소득
library(dplyr)

income_gender <- df %>%
  group_by(gender) %>%
  summarise(mean_income = mean(income), sd_income = sd(income))

print(income_gender)

# 도시별 구매자 수
purchase_by_city <- df %>%
  filter(purchase == 1) %>%
  group_by(city) %>%
  summarise(purchase_count = n()) %>%
  arrange(desc(purchase_count))

print(purchase_by_city)

# 구매 확률 로지스틱 회귀
model <- glm(purchase ~ age + income + gender, data = df, family = "binomial")
summary(model)

# 예측 결과 추가
df$predicted <- predict(model, type = "response")
df$predicted_label <- ifelse(df$predicted > 0.5, 1, 0)

# 정확도 계산
accuracy <- mean(df$predicted_label == df$purchase)
cat("모델 정확도:", round(accuracy * 100, 2), "%\n")

# 상관계수 시각화용 매트릭스
library(corrplot)
numeric_df <- df %>% select(age, income, predicted)
cor_matrix <- cor(numeric_df)
corrplot(cor_matrix, method = "circle", type = "lower", tl.cex = 0.8)

# 저장
write.csv(df, "analytics_output.csv", row.names = FALSE)

# 데이터 시뮬레이션
set.seed(123)
n <- 1000

age <- round(rnorm(n, mean = 35, sd = 10))
income <- round(rnorm(n, mean = 50000, sd = 15000))
gender <- sample(c("Male", "Female"), n, replace = TRUE)
city <- sample(c("Seoul", "Busan", "Incheon", "Daegu", "Daejeon"), n, replace = TRUE)
purchase <- rbinom(n, 1, prob = 0.4 + 0.01 * (income > 60000))

# 데이터프레임 생성
df <- data.frame(age, income, gender, city, purchase)

# 데이터 확인
head(df)
summary(df)
str(df)

# 연령대 파생 변수
df$age_group <- cut(df$age,
                    breaks = c(0, 20, 30, 40, 50, 100),
                    labels = c("10s", "20s", "30s", "40s", "50+"),
                    right = FALSE)

# 시각화
library(ggplot2)

# 연령대별 구매율
ggplot(df, aes(x = age_group, fill = factor(purchase))) +
  geom_bar(position = "fill") +
  labs(title = "연령대별 구매 비율", y = "비율", fill = "구매 여부") +
  theme_minimal()

# 성별 평균 소득
library(dplyr)

income_gender <- df %>%
  group_by(gender) %>%
  summarise(mean_income = mean(income), sd_income = sd(income))

print(income_gender)

# 도시별 구매자 수
purchase_by_city <- df %>%
  filter(purchase == 1) %>%
  group_by(city) %>%
  summarise(purchase_count = n()) %>%
  arrange(desc(purchase_count))

print(purchase_by_city)

# 구매 확률 로지스틱 회귀
model <- glm(purchase ~ age + income + gender, data = df, family = "binomial")
summary(model)

# 예측 결과 추가
df$predicted <- predict(model, type = "response")
df$predicted_label <- ifelse(df$predicted > 0.5, 1, 0)

# 정확도 계산
accuracy <- mean(df$predicted_label == df$purchase)
cat("모델 정확도:", round(accuracy * 100, 2), "%\n")

# 상관계수 시각화용 매트릭스
library(corrplot)
numeric_df <- df %>% select(age, income, predicted)
cor_matrix <- cor(numeric_df)
corrplot(cor_matrix, method = "circle", type = "lower", tl.cex = 0.8)

# 저장
write.csv(df, "analytics_output.csv", row.names = FALSE)

# 데이터 시뮬레이션
set.seed(123)
n <- 1000

age <- round(rnorm(n, mean = 35, sd = 10))
income <- round(rnorm(n, mean = 50000, sd = 15000))
gender <- sample(c("Male", "Female"), n, replace = TRUE)
city <- sample(c("Seoul", "Busan", "Incheon", "Daegu", "Daejeon"), n, replace = TRUE)
purchase <- rbinom(n, 1, prob = 0.4 + 0.01 * (income > 60000))

# 데이터프레임 생성
df <- data.frame(age, income, gender, city, purchase)

# 데이터 확인
head(df)
summary(df)
str(df)

# 연령대 파생 변수
df$age_group <- cut(df$age,
                    breaks = c(0, 20, 30, 40, 50, 100),
                    labels = c("10s", "20s", "30s", "40s", "50+"),
                    right = FALSE)

# 시각화
library(ggplot2)

# 연령대별 구매율
ggplot(df, aes(x = age_group, fill = factor(purchase))) +
  geom_bar(position = "fill") +
  labs(title = "연령대별 구매 비율", y = "비율", fill = "구매 여부") +
  theme_minimal()

# 성별 평균 소득
library(dplyr)

income_gender <- df %>%
  group_by(gender) %>%
  summarise(mean_income = mean(income), sd_income = sd(income))

print(income_gender)

# 도시별 구매자 수
purchase_by_city <- df %>%
  filter(purchase == 1) %>%
  group_by(city) %>%
  summarise(purchase_count = n()) %>%
  arrange(desc(purchase_count))

print(purchase_by_city)

# 구매 확률 로지스틱 회귀
model <- glm(purchase ~ age + income + gender, data = df, family = "binomial")
summary(model)

# 예측 결과 추가
df$predicted <- predict(model, type = "response")
df$predicted_label <- ifelse(df$predicted > 0.5, 1, 0)

# 정확도 계산
accuracy <- mean(df$predicted_label == df$purchase)
cat("모델 정확도:", round(accuracy * 100, 2), "%\n")

# 상관계수 시각화용 매트릭스
library(corrplot)
numeric_df <- df %>% select(age, income, predicted)
cor_matrix <- cor(numeric_df)
corrplot(cor_matrix, method = "circle", type = "lower", tl.cex = 0.8)

# 저장
write.csv(df, "analytics_output.csv", row.names = FALSE)
# 데이터 시뮬레이션
set.seed(123)
n <- 1000

age <- round(rnorm(n, mean = 35, sd = 10))
income <- round(rnorm(n, mean = 50000, sd = 15000))
gender <- sample(c("Male", "Female"), n, replace = TRUE)
city <- sample(c("Seoul", "Busan", "Incheon", "Daegu", "Daejeon"), n, replace = TRUE)
purchase <- rbinom(n, 1, prob = 0.4 + 0.01 * (income > 60000))

# 데이터프레임 생성
df <- data.frame(age, income, gender, city, purchase)

# 데이터 확인
head(df)
summary(df)
str(df)

# 연령대 파생 변수
df$age_group <- cut(df$age,
                    breaks = c(0, 20, 30, 40, 50, 100),
                    labels = c("10s", "20s", "30s", "40s", "50+"),
                    right = FALSE)

# 시각화
library(ggplot2)

# 연령대별 구매율
ggplot(df, aes(x = age_group, fill = factor(purchase))) +
  geom_bar(position = "fill") +
  labs(title = "연령대별 구매 비율", y = "비율", fill = "구매 여부") +
  theme_minimal()

# 성별 평균 소득
library(dplyr)

income_gender <- df %>%
  group_by(gender) %>%
  summarise(mean_income = mean(income), sd_income = sd(income))

print(income_gender)

# 도시별 구매자 수
purchase_by_city <- df %>%
  filter(purchase == 1) %>%
  group_by(city) %>%
  summarise(purchase_count = n()) %>%
  arrange(desc(purchase_count))

print(purchase_by_city)

# 구매 확률 로지스틱 회귀
model <- glm(purchase ~ age + income + gender, data = df, family = "binomial")
summary(model)

# 예측 결과 추가
df$predicted <- predict(model, type = "response")
df$predicted_label <- ifelse(df$predicted > 0.5, 1, 0)

# 정확도 계산
accuracy <- mean(df$predicted_label == df$purchase)
cat("모델 정확도:", round(accuracy * 100, 2), "%\n")

# 상관계수 시각화용 매트릭스
library(corrplot)
numeric_df <- df %>% select(age, income, predicted)
cor_matrix <- cor(numeric_df)
corrplot(cor_matrix, method = "circle", type = "lower", tl.cex = 0.8)

# 저장
write.csv(df, "analytics_output.csv", row.names = FALSE)
# 데이터 시뮬레이션
set.seed(123)
n <- 1000

age <- round(rnorm(n, mean = 35, sd = 10))
income <- round(rnorm(n, mean = 50000, sd = 15000))
gender <- sample(c("Male", "Female"), n, replace = TRUE)
city <- sample(c("Seoul", "Busan", "Incheon", "Daegu", "Daejeon"), n, replace = TRUE)
purchase <- rbinom(n, 1, prob = 0.4 + 0.01 * (income > 60000))

# 데이터프레임 생성
df <- data.frame(age, income, gender, city, purchase)

# 데이터 확인
head(df)
summary(df)
str(df)

# 연령대 파생 변수
df$age_group <- cut(df$age,
                    breaks = c(0, 20, 30, 40, 50, 100),
                    labels = c("10s", "20s", "30s", "40s", "50+"),
                    right = FALSE)

# 시각화
library(ggplot2)

# 연령대별 구매율
ggplot(df, aes(x = age_group, fill = factor(purchase))) +
  geom_bar(position = "fill") +
  labs(title = "연령대별 구매 비율", y = "비율", fill = "구매 여부") +
  theme_minimal()

# 성별 평균 소득
library(dplyr)

income_gender <- df %>%
  group_by(gender) %>%
  summarise(mean_income = mean(income), sd_income = sd(income))

print(income_gender)

# 도시별 구매자 수
purchase_by_city <- df %>%
  filter(purchase == 1) %>%
  group_by(city) %>%
  summarise(purchase_count = n()) %>%
  arrange(desc(purchase_count))

print(purchase_by_city)

# 구매 확률 로지스틱 회귀
model <- glm(purchase ~ age + income + gender, data = df, family = "binomial")
summary(model)

# 예측 결과 추가
df$predicted <- predict(model, type = "response")
df$predicted_label <- ifelse(df$predicted > 0.5, 1, 0)

# 정확도 계산
accuracy <- mean(df$predicted_label == df$purchase)
cat("모델 정확도:", round(accuracy * 100, 2), "%\n")

# 상관계수 시각화용 매트릭스
library(corrplot)
numeric_df <- df %>% select(age, income, predicted)
cor_matrix <- cor(numeric_df)
corrplot(cor_matrix, method = "circle", type = "lower", tl.cex = 0.8)

# 저장
write.csv(df, "analytics_output.csv", row.names = FALSE)
# 데이터 시뮬레이션
set.seed(123)
n <- 1000

age <- round(rnorm(n, mean = 35, sd = 10))
income <- round(rnorm(n, mean = 50000, sd = 15000))
gender <- sample(c("Male", "Female"), n, replace = TRUE)
city <- sample(c("Seoul", "Busan", "Incheon", "Daegu", "Daejeon"), n, replace = TRUE)
purchase <- rbinom(n, 1, prob = 0.4 + 0.01 * (income > 60000))

# 데이터프레임 생성
df <- data.frame(age, income, gender, city, purchase)

# 데이터 확인
head(df)
summary(df)
str(df)

# 연령대 파생 변수
df$age_group <- cut(df$age,
                    breaks = c(0, 20, 30, 40, 50, 100),
                    labels = c("10s", "20s", "30s", "40s", "50+"),
                    right = FALSE)

# 시각화
library(ggplot2)

# 연령대별 구매율
ggplot(df, aes(x = age_group, fill = factor(purchase))) +
  geom_bar(position = "fill") +
  labs(title = "연령대별 구매 비율", y = "비율", fill = "구매 여부") +
  theme_minimal()

# 성별 평균 소득
library(dplyr)

income_gender <- df %>%
  group_by(gender) %>%
  summarise(mean_income = mean(income), sd_income = sd(income))

print(income_gender)

# 도시별 구매자 수
purchase_by_city <- df %>%
  filter(purchase == 1) %>%
  group_by(city) %>%
  summarise(purchase_count = n()) %>%
  arrange(desc(purchase_count))

print(purchase_by_city)

# 구매 확률 로지스틱 회귀
model <- glm(purchase ~ age + income + gender, data = df, family = "binomial")
summary(model)

# 예측 결과 추가
df$predicted <- predict(model, type = "response")
df$predicted_label <- ifelse(df$predicted > 0.5, 1, 0)

# 정확도 계산
accuracy <- mean(df$predicted_label == df$purchase)
cat("모델 정확도:", round(accuracy * 100, 2), "%\n")

# 상관계수 시각화용 매트릭스
library(corrplot)
numeric_df <- df %>% select(age, income, predicted)
cor_matrix <- cor(numeric_df)
corrplot(cor_matrix, method = "circle", type = "lower", tl.cex = 0.8)

# 저장
write.csv(df, "analytics_output.csv", row.names = FALSE)
# 데이터 시뮬레이션
set.seed(123)
n <- 1000

age <- round(rnorm(n, mean = 35, sd = 10))
income <- round(rnorm(n, mean = 50000, sd = 15000))
gender <- sample(c("Male", "Female"), n, replace = TRUE)
city <- sample(c("Seoul", "Busan", "Incheon", "Daegu", "Daejeon"), n, replace = TRUE)
purchase <- rbinom(n, 1, prob = 0.4 + 0.01 * (income > 60000))

# 데이터프레임 생성
df <- data.frame(age, income, gender, city, purchase)

# 데이터 확인
head(df)
summary(df)
str(df)

# 연령대 파생 변수
df$age_group <- cut(df$age,
                    breaks = c(0, 20, 30, 40, 50, 100),
                    labels = c("10s", "20s", "30s", "40s", "50+"),
                    right = FALSE)

# 시각화
library(ggplot2)

# 연령대별 구매율
ggplot(df, aes(x = age_group, fill = factor(purchase))) +
  geom_bar(position = "fill") +
  labs(title = "연령대별 구매 비율", y = "비율", fill = "구매 여부") +
  theme_minimal()

# 성별 평균 소득
library(dplyr)

income_gender <- df %>%
  group_by(gender) %>%
  summarise(mean_income = mean(income), sd_income = sd(income))

print(income_gender)

# 도시별 구매자 수
purchase_by_city <- df %>%
  filter(purchase == 1) %>%
  group_by(city) %>%
  summarise(purchase_count = n()) %>%
  arrange(desc(purchase_count))

print(purchase_by_city)

# 구매 확률 로지스틱 회귀
model <- glm(purchase ~ age + income + gender, data = df, family = "binomial")
summary(model)

# 예측 결과 추가
df$predicted <- predict(model, type = "response")
df$predicted_label <- ifelse(df$predicted > 0.5, 1, 0)

# 정확도 계산
accuracy <- mean(df$predicted_label == df$purchase)
cat("모델 정확도:", round(accuracy * 100, 2), "%\n")

# 상관계수 시각화용 매트릭스
library(corrplot)
numeric_df <- df %>% select(age, income, predicted)
cor_matrix <- cor(numeric_df)
corrplot(cor_matrix, method = "circle", type = "lower", tl.cex = 0.8)

# 저장
write.csv(df, "analytics_output.csv", row.names = FALSE)
# 데이터 시뮬레이션
set.seed(123)
n <- 1000

age <- round(rnorm(n, mean = 35, sd = 10))
income <- round(rnorm(n, mean = 50000, sd = 15000))
gender <- sample(c("Male", "Female"), n, replace = TRUE)
city <- sample(c("Seoul", "Busan", "Incheon", "Daegu", "Daejeon"), n, replace = TRUE)
purchase <- rbinom(n, 1, prob = 0.4 + 0.01 * (income > 60000))

# 데이터프레임 생성
df <- data.frame(age, income, gender, city, purchase)

# 데이터 확인
head(df)
summary(df)
str(df)

# 연령대 파생 변수
df$age_group <- cut(df$age,
                    breaks = c(0, 20, 30, 40, 50, 100),
                    labels = c("10s", "20s", "30s", "40s", "50+"),
                    right = FALSE)

# 시각화
library(ggplot2)

# 연령대별 구매율
ggplot(df, aes(x = age_group, fill = factor(purchase))) +
  geom_bar(position = "fill") +
  labs(title = "연령대별 구매 비율", y = "비율", fill = "구매 여부") +
  theme_minimal()

# 성별 평균 소득
library(dplyr)

income_gender <- df %>%
  group_by(gender) %>%
  summarise(mean_income = mean(income), sd_income = sd(income))

print(income_gender)

# 도시별 구매자 수
purchase_by_city <- df %>%
  filter(purchase == 1) %>%
  group_by(city) %>%
  summarise(purchase_count = n()) %>%
  arrange(desc(purchase_count))

print(purchase_by_city)

# 구매 확률 로지스틱 회귀
model <- glm(purchase ~ age + income + gender, data = df, family = "binomial")
summary(model)

# 예측 결과 추가
df$predicted <- predict(model, type = "response")
df$predicted_label <- ifelse(df$predicted > 0.5, 1, 0)

# 정확도 계산
accuracy <- mean(df$predicted_label == df$purchase)
cat("모델 정확도:", round(accuracy * 100, 2), "%\n")

# 상관계수 시각화용 매트릭스
library(corrplot)
numeric_df <- df %>% select(age, income, predicted)
cor_matrix <- cor(numeric_df)
corrplot(cor_matrix, method = "circle", type = "lower", tl.cex = 0.8)

# 저장
write.csv(df, "analytics_output.csv", row.names = FALSE)
# 데이터 시뮬레이션
set.seed(123)
n <- 1000

age <- round(rnorm(n, mean = 35, sd = 10))
income <- round(rnorm(n, mean = 50000, sd = 15000))
gender <- sample(c("Male", "Female"), n, replace = TRUE)
city <- sample(c("Seoul", "Busan", "Incheon", "Daegu", "Daejeon"), n, replace = TRUE)
purchase <- rbinom(n, 1, prob = 0.4 + 0.01 * (income > 60000))

# 데이터프레임 생성
df <- data.frame(age, income, gender, city, purchase)

# 데이터 확인
head(df)
summary(df)
str(df)

# 연령대 파생 변수
df$age_group <- cut(df$age,
                    breaks = c(0, 20, 30, 40, 50, 100),
                    labels = c("10s", "20s", "30s", "40s", "50+"),
                    right = FALSE)

# 시각화
library(ggplot2)

# 연령대별 구매율
ggplot(df, aes(x = age_group, fill = factor(purchase))) +
  geom_bar(position = "fill") +
  labs(title = "연령대별 구매 비율", y = "비율", fill = "구매 여부") +
  theme_minimal()

# 성별 평균 소득
library(dplyr)

income_gender <- df %>%
  group_by(gender) %>%
  summarise(mean_income = mean(income), sd_income = sd(income))

print(income_gender)

# 도시별 구매자 수
purchase_by_city <- df %>%
  filter(purchase == 1) %>%
  group_by(city) %>%
  summarise(purchase_count = n()) %>%
  arrange(desc(purchase_count))

print(purchase_by_city)

# 구매 확률 로지스틱 회귀
model <- glm(purchase ~ age + income + gender, data = df, family = "binomial")
summary(model)

# 예측 결과 추가
df$predicted <- predict(model, type = "response")
df$predicted_label <- ifelse(df$predicted > 0.5, 1, 0)

# 정확도 계산
accuracy <- mean(df$predicted_label == df$purchase)
cat("모델 정확도:", round(accuracy * 100, 2), "%\n")

# 상관계수 시각화용 매트릭스
library(corrplot)
numeric_df <- df %>% select(age, income, predicted)
cor_matrix <- cor(numeric_df)
corrplot(cor_matrix, method = "circle", type = "lower", tl.cex = 0.8)

# 저장
write.csv(df, "analytics_output.csv", row.names = FALSE)
# 데이터 시뮬레이션
set.seed(123)
n <- 1000

age <- round(rnorm(n, mean = 35, sd = 10))
income <- round(rnorm(n, mean = 50000, sd = 15000))
gender <- sample(c("Male", "Female"), n, replace = TRUE)
city <- sample(c("Seoul", "Busan", "Incheon", "Daegu", "Daejeon"), n, replace = TRUE)
purchase <- rbinom(n, 1, prob = 0.4 + 0.01 * (income > 60000))

# 데이터프레임 생성
df <- data.frame(age, income, gender, city, purchase)

# 데이터 확인
head(df)
summary(df)
str(df)

# 연령대 파생 변수
df$age_group <- cut(df$age,
                    breaks = c(0, 20, 30, 40, 50, 100),
                    labels = c("10s", "20s", "30s", "40s", "50+"),
                    right = FALSE)

# 시각화
library(ggplot2)

# 연령대별 구매율
ggplot(df, aes(x = age_group, fill = factor(purchase))) +
  geom_bar(position = "fill") +
  labs(title = "연령대별 구매 비율", y = "비율", fill = "구매 여부") +
  theme_minimal()

# 성별 평균 소득
library(dplyr)

income_gender <- df %>%
  group_by(gender) %>%
  summarise(mean_income = mean(income), sd_income = sd(income))

print(income_gender)

# 도시별 구매자 수
purchase_by_city <- df %>%
  filter(purchase == 1) %>%
  group_by(city) %>%
  summarise(purchase_count = n()) %>%
  arrange(desc(purchase_count))

print(purchase_by_city)

# 구매 확률 로지스틱 회귀
model <- glm(purchase ~ age + income + gender, data = df, family = "binomial")
summary(model)

# 예측 결과 추가
df$predicted <- predict(model, type = "response")
df$predicted_label <- ifelse(df$predicted > 0.5, 1, 0)

# 정확도 계산
accuracy <- mean(df$predicted_label == df$purchase)
cat("모델 정확도:", round(accuracy * 100, 2), "%\n")

# 상관계수 시각화용 매트릭스
library(corrplot)
numeric_df <- df %>% select(age, income, predicted)
cor_matrix <- cor(numeric_df)
corrplot(cor_matrix, method = "circle", type = "lower", tl.cex = 0.8)

# 저장
write.csv(df, "analytics_output.csv", row.names = FALSE)
# 데이터 시뮬레이션
set.seed(123)
n <- 1000

age <- round(rnorm(n, mean = 35, sd = 10))
income <- round(rnorm(n, mean = 50000, sd = 15000))
gender <- sample(c("Male", "Female"), n, replace = TRUE)
city <- sample(c("Seoul", "Busan", "Incheon", "Daegu", "Daejeon"), n, replace = TRUE)
purchase <- rbinom(n, 1, prob = 0.4 + 0.01 * (income > 60000))

# 데이터프레임 생성
df <- data.frame(age, income, gender, city, purchase)

# 데이터 확인
head(df)
summary(df)
str(df)

# 연령대 파생 변수
df$age_group <- cut(df$age,
                    breaks = c(0, 20, 30, 40, 50, 100),
                    labels = c("10s", "20s", "30s", "40s", "50+"),
                    right = FALSE)

# 시각화
library(ggplot2)

# 연령대별 구매율
ggplot(df, aes(x = age_group, fill = factor(purchase))) +
  geom_bar(position = "fill") +
  labs(title = "연령대별 구매 비율", y = "비율", fill = "구매 여부") +
  theme_minimal()

# 성별 평균 소득
library(dplyr)

income_gender <- df %>%
  group_by(gender) %>%
  summarise(mean_income = mean(income), sd_income = sd(income))

print(income_gender)

# 도시별 구매자 수
purchase_by_city <- df %>%
  filter(purchase == 1) %>%
  group_by(city) %>%
  summarise(purchase_count = n()) %>%
  arrange(desc(purchase_count))

print(purchase_by_city)

# 구매 확률 로지스틱 회귀
model <- glm(purchase ~ age + income + gender, data = df, family = "binomial")
summary(model)

# 예측 결과 추가
df$predicted <- predict(model, type = "response")
df$predicted_label <- ifelse(df$predicted > 0.5, 1, 0)

# 정확도 계산
accuracy <- mean(df$predicted_label == df$purchase)
cat("모델 정확도:", round(accuracy * 100, 2), "%\n")

# 상관계수 시각화용 매트릭스
library(corrplot)
numeric_df <- df %>% select(age, income, predicted)
cor_matrix <- cor(numeric_df)
corrplot(cor_matrix, method = "circle", type = "lower", tl.cex = 0.8)

# 저장
write.csv(df, "analytics_output.csv", row.names = FALSE)
# 데이터 시뮬레이션
set.seed(123)
n <- 1000

age <- round(rnorm(n, mean = 35, sd = 10))
income <- round(rnorm(n, mean = 50000, sd = 15000))
gender <- sample(c("Male", "Female"), n, replace = TRUE)
city <- sample(c("Seoul", "Busan", "Incheon", "Daegu", "Daejeon"), n, replace = TRUE)
purchase <- rbinom(n, 1, prob = 0.4 + 0.01 * (income > 60000))

# 데이터프레임 생성
df <- data.frame(age, income, gender, city, purchase)

# 데이터 확인
head(df)
summary(df)
str(df)

# 연령대 파생 변수
df$age_group <- cut(df$age,
                    breaks = c(0, 20, 30, 40, 50, 100),
                    labels = c("10s", "20s", "30s", "40s", "50+"),
                    right = FALSE)

# 시각화
library(ggplot2)

# 연령대별 구매율
ggplot(df, aes(x = age_group, fill = factor(purchase))) +
  geom_bar(position = "fill") +
  labs(title = "연령대별 구매 비율", y = "비율", fill = "구매 여부") +
  theme_minimal()

# 성별 평균 소득
library(dplyr)

income_gender <- df %>%
  group_by(gender) %>%
  summarise(mean_income = mean(income), sd_income = sd(income))

print(income_gender)

# 도시별 구매자 수
purchase_by_city <- df %>%
  filter(purchase == 1) %>%
  group_by(city) %>%
  summarise(purchase_count = n()) %>%
  arrange(desc(purchase_count))

print(purchase_by_city)

# 구매 확률 로지스틱 회귀
model <- glm(purchase ~ age + income + gender, data = df, family = "binomial")
summary(model)

# 예측 결과 추가
df$predicted <- predict(model, type = "response")
df$predicted_label <- ifelse(df$predicted > 0.5, 1, 0)

# 정확도 계산
accuracy <- mean(df$predicted_label == df$purchase)
cat("모델 정확도:", round(accuracy * 100, 2), "%\n")

# 상관계수 시각화용 매트릭스
library(corrplot)
numeric_df <- df %>% select(age, income, predicted)
cor_matrix <- cor(numeric_df)
corrplot(cor_matrix, method = "circle", type = "lower", tl.cex = 0.8)

# 저장
write.csv(df, "analytics_output.csv", row.names = FALSE)
# 데이터 시뮬레이션
set.seed(123)
n <- 1000

age <- round(rnorm(n, mean = 35, sd = 10))
income <- round(rnorm(n, mean = 50000, sd = 15000))
gender <- sample(c("Male", "Female"), n, replace = TRUE)
city <- sample(c("Seoul", "Busan", "Incheon", "Daegu", "Daejeon"), n, replace = TRUE)
purchase <- rbinom(n, 1, prob = 0.4 + 0.01 * (income > 60000))

# 데이터프레임 생성
df <- data.frame(age, income, gender, city, purchase)

# 데이터 확인
head(df)
summary(df)
str(df)

# 연령대 파생 변수
df$age_group <- cut(df$age,
                    breaks = c(0, 20, 30, 40, 50, 100),
                    labels = c("10s", "20s", "30s", "40s", "50+"),
                    right = FALSE)

# 시각화
library(ggplot2)

# 연령대별 구매율
ggplot(df, aes(x = age_group, fill = factor(purchase))) +
  geom_bar(position = "fill") +
  labs(title = "연령대별 구매 비율", y = "비율", fill = "구매 여부") +
  theme_minimal()

# 성별 평균 소득
library(dplyr)

income_gender <- df %>%
  group_by(gender) %>%
  summarise(mean_income = mean(income), sd_income = sd(income))

print(income_gender)

# 도시별 구매자 수
purchase_by_city <- df %>%
  filter(purchase == 1) %>%
  group_by(city) %>%
  summarise(purchase_count = n()) %>%
  arrange(desc(purchase_count))

print(purchase_by_city)

# 구매 확률 로지스틱 회귀
model <- glm(purchase ~ age + income + gender, data = df, family = "binomial")
summary(model)

# 예측 결과 추가
df$predicted <- predict(model, type = "response")
df$predicted_label <- ifelse(df$predicted > 0.5, 1, 0)

# 정확도 계산
accuracy <- mean(df$predicted_label == df$purchase)
cat("모델 정확도:", round(accuracy * 100, 2), "%\n")

# 상관계수 시각화용 매트릭스
library(corrplot)
numeric_df <- df %>% select(age, income, predicted)
cor_matrix <- cor(numeric_df)
corrplot(cor_matrix, method = "circle", type = "lower", tl.cex = 0.8)

# 저장
write.csv(df, "analytics_output.csv", row.names = FALSE)
# 데이터 시뮬레이션
set.seed(123)
n <- 1000

age <- round(rnorm(n, mean = 35, sd = 10))
income <- round(rnorm(n, mean = 50000, sd = 15000))
gender <- sample(c("Male", "Female"), n, replace = TRUE)
city <- sample(c("Seoul", "Busan", "Incheon", "Daegu", "Daejeon"), n, replace = TRUE)
purchase <- rbinom(n, 1, prob = 0.4 + 0.01 * (income > 60000))

# 데이터프레임 생성
df <- data.frame(age, income, gender, city, purchase)

# 데이터 확인
head(df)
summary(df)
str(df)

# 연령대 파생 변수
df$age_group <- cut(df$age,
                    breaks = c(0, 20, 30, 40, 50, 100),
                    labels = c("10s", "20s", "30s", "40s", "50+"),
                    right = FALSE)

# 시각화
library(ggplot2)

# 연령대별 구매율
ggplot(df, aes(x = age_group, fill = factor(purchase))) +
  geom_bar(position = "fill") +
  labs(title = "연령대별 구매 비율", y = "비율", fill = "구매 여부") +
  theme_minimal()

# 성별 평균 소득
library(dplyr)

income_gender <- df %>%
  group_by(gender) %>%
  summarise(mean_income = mean(income), sd_income = sd(income))

print(income_gender)

# 도시별 구매자 수
purchase_by_city <- df %>%
  filter(purchase == 1) %>%
  group_by(city) %>%
  summarise(purchase_count = n()) %>%
  arrange(desc(purchase_count))

print(purchase_by_city)

# 구매 확률 로지스틱 회귀
model <- glm(purchase ~ age + income + gender, data = df, family = "binomial")
summary(model)

# 예측 결과 추가
df$predicted <- predict(model, type = "response")
df$predicted_label <- ifelse(df$predicted > 0.5, 1, 0)

# 정확도 계산
accuracy <- mean(df$predicted_label == df$purchase)
cat("모델 정확도:", round(accuracy * 100, 2), "%\n")

# 상관계수 시각화용 매트릭스
library(corrplot)
numeric_df <- df %>% select(age, income, predicted)
cor_matrix <- cor(numeric_df)
corrplot(cor_matrix, method = "circle", type = "lower", tl.cex = 0.8)

# 저장
write.csv(df, "analytics_output.csv", row.names = FALSE)
# 데이터 시뮬레이션
set.seed(123)
n <- 1000

age <- round(rnorm(n, mean = 35, sd = 10))
income <- round(rnorm(n, mean = 50000, sd = 15000))
gender <- sample(c("Male", "Female"), n, replace = TRUE)
city <- sample(c("Seoul", "Busan", "Incheon", "Daegu", "Daejeon"), n, replace = TRUE)
purchase <- rbinom(n, 1, prob = 0.4 + 0.01 * (income > 60000))

# 데이터프레임 생성
df <- data.frame(age, income, gender, city, purchase)

# 데이터 확인
head(df)
summary(df)
str(df)

# 연령대 파생 변수
df$age_group <- cut(df$age,
                    breaks = c(0, 20, 30, 40, 50, 100),
                    labels = c("10s", "20s", "30s", "40s", "50+"),
                    right = FALSE)

# 시각화
library(ggplot2)

# 연령대별 구매율
ggplot(df, aes(x = age_group, fill = factor(purchase))) +
  geom_bar(position = "fill") +
  labs(title = "연령대별 구매 비율", y = "비율", fill = "구매 여부") +
  theme_minimal()

# 성별 평균 소득
library(dplyr)

income_gender <- df %>%
  group_by(gender) %>%
  summarise(mean_income = mean(income), sd_income = sd(income))

print(income_gender)

# 도시별 구매자 수
purchase_by_city <- df %>%
  filter(purchase == 1) %>%
  group_by(city) %>%
  summarise(purchase_count = n()) %>%
  arrange(desc(purchase_count))

print(purchase_by_city)

# 구매 확률 로지스틱 회귀
model <- glm(purchase ~ age + income + gender, data = df, family = "binomial")
summary(model)

# 예측 결과 추가
df$predicted <- predict(model, type = "response")
df$predicted_label <- ifelse(df$predicted > 0.5, 1, 0)

# 정확도 계산
accuracy <- mean(df$predicted_label == df$purchase)
cat("모델 정확도:", round(accuracy * 100, 2), "%\n")

# 상관계수 시각화용 매트릭스
library(corrplot)
numeric_df <- df %>% select(age, income, predicted)
cor_matrix <- cor(numeric_df)
corrplot(cor_matrix, method = "circle", type = "lower", tl.cex = 0.8)

# 저장
write.csv(df, "analytics_output.csv", row.names = FALSE)