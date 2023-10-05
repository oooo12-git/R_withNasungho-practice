Pythagoras <- function(a,b){
  c <- sqrt(x = a^2 + b^2)
  return(c)
}
Pythagoras(3,4)

score = 100
if(score >= 90){
  grade = "A"
} else if(score >= 80){
  grade = "B"
} else if(score >= 70){
  grade = "C"
} else if(score >= 60){
  grade = "D"
} else {
  grade = "F"
}

print(grade)

getGrade = function(score){
  if(score >= 90){
    grade = "A"
  } else if(score >= 80){
    grade = "B"
  } else if(score >= 70){
    grade = "C"
  } else if(score >= 60){
    grade = "D"
  } else {
    grade = "F"
  }
  return(grade)
}
getGrade(100)

rm(getGrade)
source(file = 'myFuns.R')
getGrade(100)
