#Excersize 1 Control and Flow

#E1 for loop

for(ii in 1:9){
  if (ii<9){
    cat("\n")}
  else
    cat("\n*")
  }


#E2 modified for loop

for(ii in 1:10){
    cat("*","&",sep="")}

#E3
#dogs final value is equal to 15, 
#T1: 10+1=11 
#T2:11+1=12 
#T3:12+1=13 
#T4:13+1=14 
#T5:14+1=15

#meatloaf prints 
#T1: 0-5+1=-4
#T2:-4-6+1=-9
#T3:-9-7+1=-15
#T4:-15-8+1=-22
#T5:-22-9+1=-30

#bubbles
#T1: bubbles is se to -1
#T4:-2
#T5:-3
#T6:-4

#Exercise 4
years <- c( 2015, 2016, 2018, 2020, 2021)
for(ii in 1:length(years)){
  if(years[ii] %% 4==0){
    cat(years[ii], 'Hooray, presidential & those other dudes elections!', sep = '\t', fill =TRUE)
  }
  if(!(years[ii] %% 4 == 0)){ 
     if(years[ii] %% 2==0){
    cat(years[ii], 'Hooray, congressional elections!', sep = '\t', fill = T)
  }
}
}

#if(!) the if not statement allows to identify nonpresident elections

#Exercise 5
#Now look at the error message the following lines of code produce. 
#Can you think of a way to modify this loop so that the loop will compund the interest?
#HINT 2: look at the rep() function and see if you can use that to initialize 
#a variable that will help you.

bankAccounts <- c(10, 9.2, 5.6, 3.7, 8.8, 0.5);
interestRate <- 0.0125;
compounded<-c(1:6)
for (i in 1:length(bankAccounts)) {
  compounded[i] <- interestRate*bankAccounts[i] + bankAccounts[i]; }

# gives the interest compounded on the bank accounts after 1 time step

#exercise 6
bankAccounts <- c(10, 9.2, 5.6); #define bank accounts here
interestRate <- 0.0525;   
house <- c(4.8, 3.8, 5.7); #deduct
food<- c(3.5, 4.3, 5.0);    #deduct
fun <- c(7.8, 2.1, 10.5);  #deduct
#and incomes (through TAships) of 
income <- c(21, 21, 21); #add this

for (j in 1:5) {
  for (i in 1:length(bankAccounts)) {
    bankAccounts[i]=-house[i]-food[i]-fun[i]+income[i]+bankAccounts[i]
    bankAccounts[i]=bankAccounts[i]*interestRate+bankAccounts[i]
  }  
}
print(bankAccounts)

#first for loop iterates over 5 years
#inner for loop iterates the net income and accumulated interest for each grad student

#Exercise 7
bankAccounts<-c(0,0,0)
house <- c(4.8, 3.8, 5.7); 
food<- c(3.5, 4.3, 5.0); 
fun <- c(7.8, 2.1, 10.5); 
trustfund<-c(5,5,5)
#and incomes (through TAships) of 
#no interest, starting with no money
income <- c(21, 21, 21);

for (years in 2015:2020) {
  if(!(years %% 2==0)){
    bankAccounts=bankAccounts+trustfund
  }
  for (i in 1:length(bankAccounts)) {
    bankAccounts[i]=-house[i]-food[i]-fun[i]+income[i]+bankAccounts[i]
    
  }  
}
print(bankAccounts)


#Exercise 8
#sum all numers from 1:17

counter<-c(0)
summer<-c(0)
while(counter<=17){
  summer<- counter+summer
  counter=counter+1
}
print(summer)


#Exercise 9

nominator<-function(NN){
  if(NN <= -1){
    print("small")
  }
  else if(NN >= 1){
    print("BIG")
  }
 else if(NN>-1 | NN<1){
      print("medium?")
    }
}
