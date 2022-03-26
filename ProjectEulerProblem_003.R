#Project Euler Problem 3

isprime <- function(n){
  i <- 3
  if(n %% 2 == 0){
    return(FALSE)
    }
  while (i <= sqrt(n)){
    if (n %% i == 0){
      return (FALSE)
    }
    i <- i+2
  }
return(TRUE)
}

LPF <- function(n){
  i <- 3
  lpf <- 1
  if (n %% 2 == 0){
    lpf == 2
  }
  while (i <= sqrt(n)){
    if (n %% i == 0){
      if (isprime(i)){
        lpf <- i
      }
    }
    i <- i + 2
  }
  return (lpf)
}

LPF(600851475143)
