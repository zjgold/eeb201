#discrete geometric growth function
geometricGrowthFun<-function(N0,RR){  
  time<- c(0:10)
  popsize<-c(N0)
  
  for(tt in 1:10){
    popsize[tt+1]<-c(RR*popsize[tt])
  }
  return (plot(time, popsize, xlab="Time", ylab="Population Size", main= "Population Size over Time") 
          + lines(time,popsize))
}

