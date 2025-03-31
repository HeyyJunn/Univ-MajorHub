# 데이터 정제: [1] 결측치 정제

df = data.frame(gender = c("M", "F", NA, "M", "F"), score = c(5,4,3,4,NA))
df

is.na(df)
table(is.na(df)) # na 가 있는지 없는지만 알고싶을 때


table(is.na(df$gender))

df_nomiss = df %>% filter(!is.na(score) & !is.na(gender))
df_nomiss


mean(df$score, na.rm = T)
sum(df$score, na.rm = T)

df$score = ifelse(is.na(df$score), mean(df$score, na.rm = T), df$score)
df$score