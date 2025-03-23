#########################################

(row1 = c(1,2,3))

(row2 = c(4,5,6))

(row3 = c(7,8,9))

mat1 = rbind(row1,row2,row3)
mat1

mat2 = cbind(row1,row2,row3)
mat2

#########################################

chars = c("a", "b", "c", "d", "e", "f", "g", "h", "i", "j")
mat1 = matrix(chars)
mat1

mat2 = matrix(chars, ncol=5)
mat2

mat3 = matrix(1:8, nrow=2)
mat3

mat3 * 3
mat3

mat3 * c(10,20);

#########################################

x = matrix(
  1:12, 
  nrow=3, 
  dimnames = list(
    c("R1", "R2", "R3"),
    c("C1", "C2", "C3", "C4")
    )
  )
x

x[7]

x[1,]

x[,2:4]

x[,2,drop=FALSE]

x[,-2]
