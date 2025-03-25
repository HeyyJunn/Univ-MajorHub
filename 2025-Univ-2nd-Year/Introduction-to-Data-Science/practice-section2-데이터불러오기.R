getwd()

score= read.csv("score.csv")
score

########################################

no = c(1,2,3,4)
name = c("apple", "pear", "banana", "peach")
price = c(100, 200, 300, 400)

fruit = data.frame(No=no, Name=name, Price=price)

fruit

write.csv(fruit, "fruit.csv")