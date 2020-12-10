esieve <- function(n) {
  if (n==1) return(NULL)
  if (n==2) return(n)
  list<- 2:n
  counter <- 1
  p <- 2
  while (p^2 <=n){
    list <- list[list ==p | 1%% p!=0]
    counter <- counter + 1
    p <- list[i]
  }
  return(list)
}
prime.factors <- function (n) {
  factors <- c()
  primes <- esieve(floor(sqrt(n)))
  d <- which(n %% primes == 0)
  if (length(d) == 0)
    return(n)
  for (q in primes[d]) {
    while (n %% q == 0) {
      factors <- c(factors, q)
      n <- n/q } } 
      if (n > 1)
        factors <- c(factors, n)
  return(factors)
}
max(prime.factors(600851475143))