#intro to control statement

#for statement

for(ii in 1:5){
  cat("\nthe number is ", ii)
}

#for loop is going over the range 1 to 5 and printing a new line with the current integer

notfish <- c("bat", "dolphin", "toad", "soldier")

for(animal in notfish){
  cat(animal, "fish ", "are tasty\n", sep="")
}

#cat concatinates the animal then adds fish w/ no space
# animal is not important it is only used within the loop, just must be consistent

#while (some condition is true) {do something}

##while example

xx<-1
while(xx<5){
  xx<- xx+1;
  cat("value of xx", xx)
}
print(xx)

xx<-1
while(xx<5){
  xx<- xx+1;
  if (xx==3) {
    break; }
  }
print(xx)

# if statement 

xx<-1
while(xx<10){
  xx<- xx+1;
  if (xx==7) {
    cat(" lucky number ", xx,"\n") }
  else if (xx==2) {
    cat(" the number", xx, "is unklucky\n")
  }
  else {
    cat("not excited about the number", xx, "\n")
  }
}
print(xx)


