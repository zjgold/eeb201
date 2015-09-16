#lecture notes and excersizes

#population growth
RR=1.05
NN=100

for (1:10){
  NN=RR*NN
}
print(N)

#bonus plot population growth over time
time<- c(0:10)
popsize<-c(100)

for(tt in 1:10){
  popsize[tt+1]<-c(RR*popsize[tt])
}
print(popsize)
plot(time, popsize, xlab="Time", ylab="Population Size", main= "Population Size over Time")
h
lines(time,popsize)
#lines to draw a line over the top

rbind(time,popsize)
lmfit=lm(popsize~time)
abline(lmfit)

########
#3.2.1 Mini exercise
# population decline
RR=0.99
#have a negative RR value
time<- c(0:10)
popsize<-c(100)

for(tt in 1:10){
  popsize[tt+1]<-c(RR*popsize[tt])
}
print(popsize)
plot(time, popsize, xlab="Time", ylab="Population Size", main= "Population Size over Time")
h
lines(time,popsize)

#qualitative behavior based on pop size
#small
RR=1.05
time<- c(0:10)
popsize<-c(10)

for(tt in 1:10){
  popsize[tt+1]<-c(RR*popsize[tt])
}
print(popsize)
plot(time, popsize, xlab="Time", ylab="Population Size", main= "Population Size over Time")
h
lines(time,popsize)

#large
RR=1.05
time<- c(0:10)
popsize<-c(10000)

for(tt in 1:10){
  popsize[tt+1]<-c(RR*popsize[tt])
}
print(popsize)
plot(time, popsize, xlab="Time", ylab="Population Size", main= "Population Size over Time")
h
lines(time,popsize)

#the qualitative behavior of the model does not depend on the population size, the factor RR controls the population growth parameter

#weird behavior
#super small population size and long time interval
RR=1.05
time<- c(0:100)
popsize<-c(1)

for(tt in 1:100){
  popsize[tt+1]<-c(RR*popsize[tt])
}
print(popsize)
plot(time, popsize, xlab="Time", ylab="Population Size", main= "Population Size over Time")
h
lines(time,popsize)
#the growth is exponential and for a population of 1 it is possible to grow (for most species this would not be possible)


#3.2.2 Exercise
geometricGrowthFun<-function(N0,RR){
  time<- c(0:10)
  popsize<-c(N0)

  for(tt in 1:10){
  popsize[tt+1]<-c(RR*popsize[tt])
  }
  return (plot(time, popsize, xlab="Time", ylab="Population Size", main= "Population Size over Time") 
          + lines(time,popsize))
}

geometricGrowthFun(10,2)
#YEAH A FUNCTION!

#3.3 Logistic Growth in Discrete Time
#discrete logarithmic growth function
N0=10
RR=0.5
KK=100 
  time<- c(0:10)
  popsize<-c(N0)
  
  for(tt in 1:10){
    popsize[tt+1]<-c(popsize[tt]*(1+RR*(1-popsize[tt]/KK)))
  }
  plot(time, popsize, xlab="Time", ylab="Population Size", main= "Population Size over Time") 
  + lines(time,popsize)
}

#3.3.1 Mini-Exercise
discreteLogisticFun<-function(N0,RR,KK){  
  time<- c(0:10)
  popsize<-c(N0)
  
  for(tt in 1:10){
    popsize[tt+1]<-c(popsize[tt]*(1+RR*(1-popsize[tt]/KK)))
  }
  plot(time, popsize, xlab="Time", ylab="Population Size", main= "Population Size over Time") 
}
discreteLogisticFun(10,0.5,100)

#finding something strange
discreteLogisticFun(10,2,100)
#the population enters into a cycle after hitting the carrying capacity

#3.3.2 Harder Mini Exercise
rd<-c(-0.3,0.3,1.3,1.9,2.2,2.7)

par(mfrow=c(2,3))
for(aa in 1:length(rd)){
  discreteLogisticFun(10,rd[aa],100)
}
