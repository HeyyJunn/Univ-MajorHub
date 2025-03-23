# QUIZ 0317
# 60241996 김민준 (데이터사이언스 전공)

menu=c('빅맥', '불고기버거', '치즈와퍼')
kcal=c(514, 533, 566)
na=c(917, 817, 920)
fat=c(15, 13, 12)

burger=data.frame(Menu=menu, Kcal=kcal, Na=na, Fat=fat)
rownames(burger)=c('M', 'L', 'B')

burger
##########
# Q1 M사의 나트륨 함량은?
burger['M', 'Na']
# Q2 모든 브랜드의 열량정보는?
burger[, 'Kcal']
# Q3 M과 B사의 메뉴명은?
burger[c('M','B'), 'Menu']