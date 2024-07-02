rm(list=ls())

library(dplyr)
library(ggplot2)
library(jtools)
library(GPArotation)
library(rsq)
library(psych)

setwd("D:/R/Bdata")

lpdata <- read.csv("lifepop3.csv",header=T)
View(lpdata)

lpdata <- lpdata[,-c(9,10,11,15,17,18,19)] #데이터가 모두 0인 열(집객시설) 제거
View(lpdata)

facilmodel <- lm(lpop~facility, data = lpdata) #생활인구~기타집객시설 회귀모형
plot(lpdata$facility, lpdata$lpop, xlab="facility", ylab ="lpop")
abline(facilmodel)
summary(facilmodel)
summ(facilmodel)
par(mfrow=c(2,2))
plot(facilmodel,1)
plot(facilmodel,2)
plot(facilmodel,3)
plot(facilmodel,4)

lpdatafacil <- lpdata[-c(9,23),]
facilmodel2 <- lm(lpop~facility, data = lpdatafacil)
par(mfrow=c(1,1))
plot(lpdatafacil$facility, lpdatafacil$lpop, xlab="facility", ylab ="lpop")
abline(facilmodel2)
summary(facilmodel2)
summ(facilmodel2)
par(mfrow=c(2,2))
plot(facilmodel2,1)
plot(facilmodel2,2)
plot(facilmodel2,3)
plot(facilmodel2,4)

lpdatafacil2 <- lpdatafacil[-4,]
facilmodel3 <- lm(lpop~facility, data = lpdatafacil2)
par(mfrow=c(1,1))
plot(lpdatafacil2$facility, lpdatafacil2$lpop, xlab="facility", ylab ="lpop")
abline(facilmodel3)
summary(facilmodel3)
summ(facilmodel2)
par(mfrow=c(2,2))
plot(facilmodel3,1)
plot(facilmodel3,2)
plot(facilmodel3,3)
plot(facilmodel3,4)
rm(lpdatafacil,lpdatafacil2)
