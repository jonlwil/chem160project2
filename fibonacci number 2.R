num<- function(n) {
  if (n <= 2) return(1) 
  return(num(n-1)+num(n-2))
}
num(32)
