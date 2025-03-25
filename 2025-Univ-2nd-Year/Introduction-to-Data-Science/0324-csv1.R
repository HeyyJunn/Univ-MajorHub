# getwd()
(x=read.csv("score.csv"))

str(x)
x$name = as.character(x$name)

########################################

(x1 = read.csv("c.csv"))

str(x1)

########################################

x1 = read.csv("c.csv", na.strings = c("nil"))
str(x1)

mean(x1$score)
mean(x1$score, na.rm=T)

########################################

x = 1:5
y = 6:10

save(x,y, file="xy.RData")
rm(list=ls())

load("xy.RData")
x
y



