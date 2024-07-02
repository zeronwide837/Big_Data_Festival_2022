options(max.print=20000000) #데이터 제한 확장

#루틴(7월 예시)
#09~12시
July09<-read.csv('C:/Users/practice/Desktop/빅데이터 페스티벌/데이터/life_popul/7월/7m09.csv',header=T,fileEncoding = "euc-kr")
July09$이동인구.합.<-as.numeric(July09$이동인구.합.) #숫자형으로 변환
j09 <- aggregate(data=July09,이동인구.합.~도착.시군구.코드,sum,na.rm=T) #자치구별 합
j09p<-j09$이동인구.합.#변수에 합계 할당

#13시~17시
July13<-read.csv('C:/Users/practice/Desktop/빅데이터 페스티벌/데이터/life_popul/7월/7m13.csv',header=T,fileEncoding = "euc-kr")
July13$이동인구.합.<-as.numeric(July13$이동인구.합.)
July13<-July13[-c(which(July13$요일=="토")),]
July13<-July13[-c(which(July13$요일=="일")),] #주말 데이터 제거
j13 <- aggregate(data=July13,이동인구.합.~도착.시군구.코드,sum,na.rm=T)
j13p<-j13$이동인구.합.


jp<-j09p+j10p+j11p+j12p+j13p+j14p+j15p+j16p+j17p #시간별 유입인구 종합->지역구별 7월 유입인구
x<-c(1:91) #데이터 프레임 만들기 용 변수
Juldat <- data.frame(x,jp)
Juldatp <- Juldat[-c(26:91),] #비서울 데이터 제거
write.csv(Juldatp,"C:/Users/practice/Desktop/빅데이터 페스티벌/데이터/life_popul/7월/7월유입인구종합.csv")