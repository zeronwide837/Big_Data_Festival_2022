par(mfrow=c(1,1))

bussmodel <- lm(lpop~busS, data = lpdata)
plot(lpdata$busS, lpdata$lpop, xlab="busstop", ylab ="lpop")
abline(bussmodel)
summary(bussmodel)
summ(bussmodel)
par(mfrow=c(2,2))
plot(bussmodel,1)
plot(bussmodel,2)
plot(bussmodel,3)
plot(bussmodel,4)

lpdatabus <- lpdata[-c(4,9,17,23),]

bussmodel2 <- lm(lpop~busS, data = lpdatabus)
plot(lpdatabus$busS, lpdatabus$lpop, xlab="busstop", ylab ="lpop")
abline(bussmodel2)
summary(bussmodel2)
summ(bussmodel2)
par(mfrow=c(2,2))
plot(bussmodel2,1)
plot(bussmodel2,2)
plot(bussmodel2,3)
plot(bussmodel2,4)

rm(lpdatabus)
