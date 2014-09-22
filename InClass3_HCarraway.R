#Hunter Carraway
#9.22.14
#CMDA 3654
#In Class 3

setwd("/Users/hunter/Desktop/CMDA 3456/R code")
load("exampleData1.rData")

#Problem 1
merge(custdata, medianincome)
stdincome <- sd(custdata$income)
meanincome <- mean(custdata$income)
scaleincome <- (custdata$income - meanincome) / stdincome
summary(scaleincome)
#This would make sense if a company was trying to come up with
#a customer rating system according to income

#Problem 2
trainingSet <- subset(custdata, scaleincome <= 0.3)
testSet <- subset(custdata, scaleincome > .7)
