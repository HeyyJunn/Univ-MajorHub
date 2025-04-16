x=c(1:10)
x

switch(x[2],
       "1"=print("one"),
       "2"=print("two"),
       "3"=print("three"),
       print("something else")
       )

for (i in 1:10) print(i)


sum1 = 0
for (i in seq(1,10, by=1))
  sum1 = sum1 + i
sum1

sum3 = 0
i = 1
repeat {
  sum3 = sum3 + i
  i = i+1
  if(i>10) break
}
sum3

# %% 나머지기능
# %/% 몫 기능
# / 나눗셈 기능

# for (i in 1:30) {
#   ifelse(i %% 2 == 0,  )
# }
 
i = 0
while(i <= 30) {
  i = i+1
  if(i%%2 != 0 ) next
  print(i)
}


fibo = function(n) {
  if(n==1 || n==2) {
    return(1)
  }
  return(fibo(n-1) + fibo(n-2))
}

fibo(1)
fibo(2)
fibo(3)
fibo(4)
fibo(5)
fibo(6)
fibo(100)

calculator = function(x, type) {
  switch(type,
         mean = mean(x),
         sum = sum(x),
         print("unexpected type"))
}
x = c(1:10)
calculator(x, "mean")
calculator(x, "sum")
calculator(x, "sd")

f = function(x,y) { # 두개의 인자를 가짐
  print(x)
  print(y)
}
f(1,2)
f(y=2, x=1)

# 함수 정의 및 사용
f = function(...) {
  args = list(...)
  for (a in args){
    print(a)
}
}
print(c(1,2,3,4,5,65))

# 중첩함수
f = function(x,y) {
  print(x)
  g = function(y) {
    print(y)
  }
  g(y)
}
f(1,2)

# 함수의 영역 규칙

b = 0
f= function() {
  a=1
  g= function() {
    a=2
    b=2
    print(a)
    print(b)
  }
  g()
  print(a)
  print(b)
}
f()

b = 0
f= function() {
  a=1
  g= function() {
    a<<-2 
    b<<-2
    print(a)
    print(b)
  }
  g()
  print(a)
  print(b)
}
f()
save(f, file"myF.Rdata")
load("myF.Rdata")

##################################################
queue = function() {
  q = c()
  q_size = 0
  
  enqueue = function(data) {
    q <<- c(q, data)
    q_size <<- q_size + 1
  }
  dequeue = function() {
    first = q[1]
    q <<- q[-1]
    q_size <<- q_size - 1
    return (first)
  }
  size  = function() {
    return (q_size)
  }
  return(list(enqueue=enqueue, dequeue=dequeue, size=size))
}

q = queue()

q$enqueue(1)
q$enqueue(2)
q$enqueue(3)
q$size()
q$dequeue()

q_size = 100
q$size()

##################################################

fun = function() {
  answer = readline("y/n 을 입력하세요: ")
  if(substr(answer,1,1) == "n")
    cat("n을 입력받았습니다.")
  else
    cat("y를 입력받았습니다.")
}

funMenu = function() {
  answer = menu(c("orange", "red", "blue"))
  if(answer==1) {
    cat("your input is orange")
  } else if(answer == 2) {
    cat("your input is grape")
  } else {
    cat("your input is kiwi")
  }
}

fibolist = function(size) {
  if(size <= 2) {
    stop("The size should be greater than 2")
  }
  
  num1 =1
  num2 =1
  fibonacci = c(num1, num2)
  count = 2
  
  while (count < size) {
    num1 = num2
    num2 = num2 + num1
    
    fibonacci = c(fibonacci, num2)
    count = count + 1
  }
  print(fibonacci)
}

fibolist(20)

