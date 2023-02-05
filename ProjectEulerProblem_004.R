palin <- function(n) {
  string <- as.character(n)
  L <- nchar(string)
  for (i in seq_along(string)) {
    if (nchar(substring(string, i, i)) == 0 || nchar(substring(string, -(i + 1), -(i + 1))) == 0) {
      next
    }
    if (as.numeric(substring(string, i, i)) != as.numeric(substring(string, -(i + 1), -(i + 1)))) {
      return(FALSE)
    }
  }
  return(TRUE)
}

digit <- function(z) {
  x <- 10 ^ z
  y <- 10 ^ z
  largest <- 0
  while (x > 1) {
    x <- x - 1
    y <- 10 ^ z
    while (y > 1) {
      y <- y - 1
      if (palin(x * y)) {
        test <- x * y
        if (test > largest) {
          largest <- test
          X <- x
          Y <- y
        }
      }
    }
  }
  cat("The numbers are:", X, Y, "and their product is:", largest, "\n")
}

digit(3)
