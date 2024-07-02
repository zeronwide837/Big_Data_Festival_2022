######################################################################################################
##########################20년 서울 내 구별 집객시설 현황 데이터 제작용 코드#############################
######################################################################################################

install.packages("readr")
library(readr)
mcc2020<-read.csv('.../mcc.csv',header=T,fileEncoding = "euc-kr")
mcc2021<-read.csv('.../mcc.csv',header=T,fileEncoding = "euc-kr")
mcc2020<-mcc2020[c(which(mcc2020$기준_년_코드=="2020")),]
mcc2021<-mcc2021[c(which(mcc2021$기준_년_코드=="2021")),]
write.csv(mcc2020,".../2020_집객시설.csv",row.names=F, fileEncoding = 'cp949')
write.csv(mcc2021,".../2021_집객시설.csv",row.names=F, fileEncoding = 'cp949')
