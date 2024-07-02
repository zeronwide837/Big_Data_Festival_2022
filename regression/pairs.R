#### scatter plot matrix ####

names(lpdata)

subdat <- subset(lpdata,select=c(facility,office,bank,hospitalB,hospitalS,pharmacy,child,univ,Dstore,marketS,accommo,subway,busS,lpop))

pairs(subdat)

plot(lpdata$lpop,lpdata$pharmacy)

