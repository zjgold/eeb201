#Script from Flow Control in R lecture by Dr. Mike Alfaro

#in class examples
library(ape)


cat("hello world")
help(cat)
print("sup world")

####

#find current wd
getwd()

#to find wd 1) see file in finder 2) get info

#setwd() (already in the correct wd): "/Users/zacharygold/Documents/UCLA PhD/Classes/R Course/eeb201/eeb201.Rproj"

#use lots of comments

?lm
#  ?==help

#stackoverflow has helpful resources

#cat prints object to a screen

grad.school.tips<- c("avoid excel", "reference manager!", "l2code")
cat(grad.school.tips, sep="/n")


#install.packages

ls()

rm(list=ls())
#ls returns a list of variables, rm removes all inside the (), passes functions through an object to a function to delete all

source("source.example.R")
getwd()
ls()
all.I.know.about.life.I.learned.in.grad.school


############################################
#should start a new script since this is serpate than berfore
tt<- read.tree("tree.tre")

str(tt)
#8,000 species

head(tt$tip.label)

inpath= "data.txt"

dd<- read.table("data.txt", header=TRUE, sep='\t', as.is=T)
#watch the slash and check the equals sign

head(dd)

attributes(dd)

dim(dd)
# number ofs rows and then columns

dflength<-dim(dd)[1]

#runif generatres random uniform numbers

size<- runif(dflength)

dd<-cbind(dd,size)
head(dd)

dd[,1]
dd[1,]

which(dd$mode=='MPF')
#gives just the index 
# == boolean comparison, asking if it is true or not true.... one equal sign is used for an assignment

dd[which(dd$mode=="MPF"),]
#gives the subset of data, allows you to select the rows in which the mode is equal to MPF, 

mpf_swimmers<-which(dd$mode=='MPF')
#only has the #s
mpfs<-dd[which(dd$mode=="MPF"),]
head(mpfs)


