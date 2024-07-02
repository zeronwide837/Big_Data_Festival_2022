md21m<-read.csv('C:/Users/CountBall/Desktop/빅데이터 페스티벌/데이터/8월 5일 데이터/점포/md21m.csv',header=T,fileEncoding = "euc-kr")

md21m <- md21m[,c(1:6,10)]
sm21t <- aggregate(data=md21m,유사_업종_점포_수~기준_년_코드+기준_분기_코드+상권_코드,sum,na.rm=T)
write.csv(sm21t,"C:/Users/CountBall/Desktop/빅데이터 페스티벌/데이터/8월 5일 데이터/점포/21년_상권배후_유사점포.csv",row.names=F, fileEncoding = 'cp949')
