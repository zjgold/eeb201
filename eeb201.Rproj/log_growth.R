#discrete logarithmic growth function
discreteLogisticFun<-function(N0,RR,KK){  
  time<- c(0:10)
  popsize<-c(N0)

  for(tt in 1:10){
  popsize[tt+1]<-c(popsize[tt]*(1+RR*(1-popsize[tt]/KK)))
}
  plot(time, popsize, xlab="Time", ylab="Population Size", main= "Population Size over Time") 
        + lines(time,popsize)
}

