######################################################################################################
##########################6월 20시 각 요일 및 동별 도착인구 데이터 제작용 코드###########################
######################################################################################################

Jan20<-read.csv('.../06_20.csv',header=T,fileEncoding = "euc-kr")

Jan20<-Jan20[,-c(1,4,8,9)]

Jan20$이동인구.합.<-as.numeric(Jan20$이동인구.합.)

Jan20$이동인구.합.[is.na(Jan20$이동인구.합.)]<-1 

Jan20M<-Jan20[c(which(Jan20$요일 == "월")),]
Jan20M<-Jan20M[c(which(Jan20M$도착.행정동.코드=="1123076"),which(Jan20M$도착.행정동.코드=="1125059"),which(Jan20M$도착.행정동.코드=="1109065"),which(Jan20M$도착.행정동.코드=="1116067"),which(Jan20M$도착.행정동.코드=="1121058"),which(Jan20M$도착.행정동.코드=="1105054"),which(Jan20M$도착.행정동.코드=="1117067"),which(Jan20M$도착.행정동.코드=="1118057"),which(Jan20M$도착.행정동.코드=="1118052"),which(Jan20M$도착.행정동.코드=="1111078"),which(Jan20M$도착.행정동.코드=="1110055"),which(Jan20M$도착.행정동.코드=="1106080"),which(Jan20M$도착.행정동.코드=="1120067"),which(Jan20M$도착.행정동.코드=="1114073")),]
Jan20Ms <- aggregate(data=Jan20M,이동인구.합.~도착.행정동.코드+성별+나이,sum)

write.csv(Jan20Ms,".../6월20시월.csv",row.names=F, fileEncoding = 'cp949')

Jan20T<-Jan20[c(which(Jan20$요일 == "화")),]
Jan20T<-Jan20T[c(which(Jan20T$도착.행정동.코드=="1123076"),which(Jan20T$도착.행정동.코드=="1125059"),which(Jan20T$도착.행정동.코드=="1109065"),which(Jan20T$도착.행정동.코드=="1116067"),which(Jan20T$도착.행정동.코드=="1121058"),which(Jan20T$도착.행정동.코드=="1105054"),which(Jan20T$도착.행정동.코드=="1117067"),which(Jan20T$도착.행정동.코드=="1118057"),which(Jan20T$도착.행정동.코드=="1118052"),which(Jan20T$도착.행정동.코드=="1111078"),which(Jan20T$도착.행정동.코드=="1110055"),which(Jan20T$도착.행정동.코드=="1106080"),which(Jan20T$도착.행정동.코드=="1120067"),which(Jan20T$도착.행정동.코드=="1114073")),]
Jan20Ts <- aggregate(data=Jan20T,이동인구.합.~도착.행정동.코드+성별+나이,sum)

write.csv(Jan20Ts,".../6월20시화.csv",row.names=F, fileEncoding = 'cp949')

Jan20W<-Jan20[c(which(Jan20$요일 == "수")),]
Jan20W<-Jan20W[c(which(Jan20W$도착.행정동.코드=="1123076"),which(Jan20W$도착.행정동.코드=="1125059"),which(Jan20W$도착.행정동.코드=="1109065"),which(Jan20W$도착.행정동.코드=="1116067"),which(Jan20W$도착.행정동.코드=="1121058"),which(Jan20W$도착.행정동.코드=="1105054"),which(Jan20W$도착.행정동.코드=="1117067"),which(Jan20W$도착.행정동.코드=="1118057"),which(Jan20W$도착.행정동.코드=="1118052"),which(Jan20W$도착.행정동.코드=="1111078"),which(Jan20W$도착.행정동.코드=="1110055"),which(Jan20W$도착.행정동.코드=="1106080"),which(Jan20W$도착.행정동.코드=="1120067"),which(Jan20W$도착.행정동.코드=="1114073")),]
Jan20Ws <- aggregate(data=Jan20W,이동인구.합.~도착.행정동.코드+성별+나이,sum)

write.csv(Jan20Ws,".../6월20시수.csv",row.names=F, fileEncoding = 'cp949')

Jan20TH<-Jan20[c(which(Jan20$요일 == "목")),]
Jan20TH<-Jan20TH[c(which(Jan20TH$도착.행정동.코드=="1123076"),which(Jan20TH$도착.행정동.코드=="1125059"),which(Jan20TH$도착.행정동.코드=="1109065"),which(Jan20TH$도착.행정동.코드=="1116067"),which(Jan20TH$도착.행정동.코드=="1121058"),which(Jan20TH$도착.행정동.코드=="1105054"),which(Jan20TH$도착.행정동.코드=="1117067"),which(Jan20TH$도착.행정동.코드=="1118057"),which(Jan20TH$도착.행정동.코드=="1118052"),which(Jan20TH$도착.행정동.코드=="1111078"),which(Jan20TH$도착.행정동.코드=="1110055"),which(Jan20TH$도착.행정동.코드=="1106080"),which(Jan20TH$도착.행정동.코드=="1120067"),which(Jan20TH$도착.행정동.코드=="1114073")),]
Jan20THs <- aggregate(data=Jan20TH,이동인구.합.~도착.행정동.코드+성별+나이,sum)

write.csv(Jan20THs,".../6월20시목.csv",row.names=F, fileEncoding = 'cp949')

Jan20F<-Jan20[c(which(Jan20$요일 == "금")),]
Jan20F<-Jan20F[c(which(Jan20F$도착.행정동.코드=="1123076"),which(Jan20F$도착.행정동.코드=="1125059"),which(Jan20F$도착.행정동.코드=="1109065"),which(Jan20F$도착.행정동.코드=="1116067"),which(Jan20F$도착.행정동.코드=="1121058"),which(Jan20F$도착.행정동.코드=="1105054"),which(Jan20F$도착.행정동.코드=="1117067"),which(Jan20F$도착.행정동.코드=="1118057"),which(Jan20F$도착.행정동.코드=="1118052"),which(Jan20F$도착.행정동.코드=="1111078"),which(Jan20F$도착.행정동.코드=="1110055"),which(Jan20F$도착.행정동.코드=="1106080"),which(Jan20F$도착.행정동.코드=="1120067"),which(Jan20F$도착.행정동.코드=="1114073")),]
Jan20Fs <- aggregate(data=Jan20F,이동인구.합.~도착.행정동.코드+성별+나이,sum)

write.csv(Jan20Fs,".../6월20시금.csv",row.names=F, fileEncoding = 'cp949')

Jan20S<-Jan20[c(which(Jan20$요일 == "토")),]
Jan20S<-Jan20S[c(which(Jan20S$도착.행정동.코드=="1121058"),which(Jan20S$도착.행정동.코드=="1105054"),which(Jan20S$도착.행정동.코드=="1117067"),which(Jan20S$도착.행정동.코드=="1118052"),which(Jan20S$도착.행정동.코드=="1114073")),]
Jan20Ss <- aggregate(data=Jan20S,이동인구.합.~도착.행정동.코드+성별+나이,sum)

write.csv(Jan20Ss,".../6월20시토.csv",row.names=F, fileEncoding = 'cp949')

Jan20SU<-Jan20[c(which(Jan20$요일 == "일")),]
Jan20SU<-Jan20SU[c(which(Jan20SU$도착.행정동.코드=="1123076"),which(Jan20SU$도착.행정동.코드=="1125059"),which(Jan20SU$도착.행정동.코드=="1109065"),which(Jan20SU$도착.행정동.코드=="1116067"),which(Jan20SU$도착.행정동.코드=="1121058"),which(Jan20SU$도착.행정동.코드=="1105054"),which(Jan20SU$도착.행정동.코드=="1117067"),which(Jan20SU$도착.행정동.코드=="1118052"),which(Jan20SU$도착.행정동.코드=="1111078"),which(Jan20SU$도착.행정동.코드=="1110055"),which(Jan20SU$도착.행정동.코드=="1106080"),which(Jan20SU$도착.행정동.코드=="1120067")),]
Jan20SUs <- aggregate(data=Jan20SU,이동인구.합.~도착.행정동.코드+성별+나이,sum)

write.csv(Jan20SUs,".../6월20시일.csv",row.names=F, fileEncoding = 'cp949')

rm(list=ls())