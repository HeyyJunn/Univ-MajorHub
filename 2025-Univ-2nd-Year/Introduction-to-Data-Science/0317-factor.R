f= c('A', 'B', 'B', 'O', 'AB', 'A')
f_factor = factor(f)

# 이미 지정된 값의 종류 이외의 값이 들어오는 것을 막을 수 있음

f_factor[7] = 'B'
f_factor[8] = 'C'
as.integer(f_factor)

