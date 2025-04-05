menu=c('빅맥', '불고기버거', '치즈와퍼')
kcal=c(514, 533, 566)
na=c(917, 817, 920)
fat=c(15, 13, 12)

burger=data.frame(Menu=menu, Kcal=kcal, Na=na, Fat=fat)
rownames(burger)=c('M', 'L', 'B')

burger 

getwd()
save(burger, file="burger.dat")