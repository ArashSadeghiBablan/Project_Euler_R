#Project Euler Problem 2
SumFib <- function(n) {
  i <- 1
  j <- 2
  k <- 0
  total <- 1
  while (j < n){
    if (j%%2 == 0){
      total <- total + j
    }
    k <- j
    j <- i+j
    i <- k
    
  }
  return(total)
  
}

SumFib(4000000)