dists<-c()
for (n in 1:30) {
  for (i in 1:1000) {
    P1<-runif(n)
    P2<-runif(n)
    dist<-sqrt(sum((P1-P2)^2))
    dists<-c(dists, dist)
  }
}
mean.dist<-mean(dists)
sd.dist<-sd(dists)
cat(mean.dist,sd.dist,"\n")
hist(dists)