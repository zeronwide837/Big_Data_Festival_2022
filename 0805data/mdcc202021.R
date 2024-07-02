######################################################################################################
##########################21년 상권배후 유사점포 현황 데이터 제작용 코드################################
######################################################################################################

mdcc2020<-read.csv('C:/Users/CountBall/Desktop/빅데이터 페스티벌/데이터/8월 5일 데이터/집객시설/mdcc.csv',header=T,fileEncoding = "euc-kr")
mdcc2021<-read.csv('C:/Users/CountBall/Desktop/빅데이터 페스티벌/데이터/8월 5일 데이터/집객시설/mdcc.csv',header=T,fileEncoding = "euc-kr")
mdcc2020<-mdcc2020[c(which(mdcc2020$기준_년_코드=="2020")),]
mdcc2021<-mdcc2021[c(which(mdcc2021$기준_년_코드=="2021")),]
write.csv(mdcc2020,"C:/Users/CountBall/Desktop/빅데이터 페스티벌/데이터/8월 5일 데이터/집객시설/2020_집객시설_배.csv",row.names=F, fileEncoding = 'cp949')
write.csv(mdcc2021,"C:/Users/CountBall/Desktop/빅데이터 페스티벌/데이터/8월 5일 데이터/집객시설/2021_집객시설_배.csv",row.names=F, fileEncoding = 'cp949')

