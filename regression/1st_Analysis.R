####linear regression####

Data<-read.csv('.../AllData.csv',header=T)
Data
summary(Data)
library("rsq")

plot(testFac~houseH,data=Data)
model1<-lm(testFac~houseH,data=Data)
model1
rsq(model1)
abline(model1)

plot(testFac~Popul,data=Data)
model2<-lm(testFac~Popul,data=Data)
model2
rsq(model2)
abline(model2)

plot(testFac~PPH,data=Data)
model3<-lm(testFac~PPH,data=Data)
model3
rsq(model3)
abline(model3)

plot(testFac~Old,data=Data)
model4<-lm(testFac~Old,data=Data)
model4
rsq(model4)
abline(model4)

plot(testFac~Pdensity,data=Data)
model5<-lm(testFac~Pdensity,data=Data)
model5
rsq(model5)
abline(model5)

plot(testFac~Station,data=Data)
model6<-lm(testFac~Station,data=Data)
model6
rsq(model6)
abline(model6)

plot(testFac~OldFac,data=Data)
model6<-lm(testFac~OldFac,data=Data)
model6
rsq(model6)
abline(model6)

plot(testFac~Mycar,data=Data)
model7<-lm(testFac~Mycar,data=Data)
model7
rsq(model7)
abline(model7)