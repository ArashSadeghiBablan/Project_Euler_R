#Project Euler Problem 1

solve <- function(n){
  total <- 0
  numbers <- 1 : n-1
  for(i in numbers) {
    if ( ( i%%3 ) == 0 | ( i %% 5 ) == 0 )
      total <- total + i
  }
  print(total)
}

solve(1000)
