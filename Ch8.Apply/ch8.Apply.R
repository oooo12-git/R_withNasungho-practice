str(object = iris)
irisMat1 = as.matrix(iris)
head(irisMat1)

apply(iris[,1:4],1,mean)
apply(iris[,1:4],2,mean)

avg = c()
for (i in 1:150) {
  row = iris[i,1:4]
  row = as.numeric(row)
  avg[i] = mean(row)
}

n = 30000
set.seed(1234)
univ = data.frame(
  국어 = sample(40:100, size = n, replace = TRUE),
  영어 = sample(40:100, size = n, replace = TRUE),
  수학 = sample(40:100, size = n, replace = TRUE)
)

str(univ)
head(univ, n = 10L)

system.time(expr = {
  avg1 = c()
  for (i in 1 : n) {
    avg1[i] = mean(as.integer(univ[i,]))
  }
})

system.time(expr = avg2 <- apply(univ, 1, mean))

lapply(univ, mean)
sapply(univ, mean)
apply(univ,2,mean)

sapply(univ, mean, simplify = FALSE)

sapply(univ, mean)
sapply(univ, sqrt)

sapply(univ, FUN = function(obj){
  result <- length(x = obj[obj >= 70])
  return(result)
})

source(file = 'myFuns.R')
sapply(univ,FUN = function(score){
  grade <- sapply(score, getGrade)
  return(grade)
})
