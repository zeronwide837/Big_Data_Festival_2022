######################################################################################################
##########################6월 09시 각 요일 및 동별 도착인구 데이터 제작용 코드###########################
######################################################################################################

Jan09<-read.csv('.../06_09.csv',header=T,fileEncoding = "euc-kr")

Jan09<-Jan09[,-c(1,4,8,9)]

Jan09$이동인구.합.<-as.numeric(Jan09$이동인구.합.)

Jan09$이동인구.합.[is.na(Jan09$이동인구.합.)]<-1

Jan09M<-Jan09[c(which(Jan09$요일 == "월")),]
Jan09M<-Jan09M[c(which(Jan09M$도착.행정동.코드=="1102069"),which(Jan09M$도착.행정동.코드=="1102055"),which(Jan09M$도착.행정동.코드=="1103073"),which(Jan09M$도착.행정동.코드=="1104068"),which(Jan09M$도착.행정동.코드=="1105056"),which(Jan09M$도착.행정동.코드=="1105067"),which(Jan09M$도착.행정동.코드=="1107071"),which(Jan09M$도착.행정동.코드=="1108085"),which(Jan09M$도착.행정동.코드=="1109061"),which(Jan09M$도착.행정동.코드=="1111077"),which(Jan09M$도착.행정동.코드=="1112071"),which(Jan09M$도착.행정동.코드=="1112073"),which(Jan09M$도착.행정동.코드=="1114063"),which(Jan09M$도착.행정동.코드=="1115069"),which(Jan09M$도착.행정동.코드=="1115063")),]
Jan09Ms <- aggregate(data=Jan09M,이동인구.합.~도착.행정동.코드+성별+나이,sum)

write.csv(Jan09Ms,".../6월9시월.csv",row.names=F, fileEncoding = 'cp949')

Jan09T<-Jan09[c(which(Jan09$요일 == "화")),]
Jan09T<-Jan09T[c(which(Jan09T$도착.행정동.코드=="1102069"),which(Jan09T$도착.행정동.코드=="1102055"),which(Jan09T$도착.행정동.코드=="1103073"),which(Jan09T$도착.행정동.코드=="1104068"),which(Jan09T$도착.행정동.코드=="1105056"),which(Jan09T$도착.행정동.코드=="1105067"),which(Jan09T$도착.행정동.코드=="1107071"),which(Jan09T$도착.행정동.코드=="1108085"),which(Jan09T$도착.행정동.코드=="1109061"),which(Jan09T$도착.행정동.코드=="1111077"),which(Jan09T$도착.행정동.코드=="1112071"),which(Jan09T$도착.행정동.코드=="1112073"),which(Jan09T$도착.행정동.코드=="1114063"),which(Jan09T$도착.행정동.코드=="1115069"),which(Jan09T$도착.행정동.코드=="1115063")),]
Jan09Ts <- aggregate(data=Jan09T,이동인구.합.~도착.행정동.코드+성별+나이,sum)

write.csv(Jan09Ts,".../6월9시화.csv",row.names=F, fileEncoding = 'cp949')

Jan09W<-Jan09[c(which(Jan09$요일 == "수")),]
Jan09W<-Jan09W[c(which(Jan09W$도착.행정동.코드=="1102069"),which(Jan09W$도착.행정동.코드=="1102055"),which(Jan09W$도착.행정동.코드=="1103073"),which(Jan09W$도착.행정동.코드=="1104068"),which(Jan09W$도착.행정동.코드=="1105056"),which(Jan09W$도착.행정동.코드=="1105067"),which(Jan09W$도착.행정동.코드=="1107071"),which(Jan09W$도착.행정동.코드=="1108085"),which(Jan09W$도착.행정동.코드=="1109061"),which(Jan09W$도착.행정동.코드=="1111077"),which(Jan09W$도착.행정동.코드=="1112071"),which(Jan09W$도착.행정동.코드=="1112073"),which(Jan09W$도착.행정동.코드=="1114063"),which(Jan09W$도착.행정동.코드=="1115069"),which(Jan09W$도착.행정동.코드=="1115063")),]
Jan09Ws <- aggregate(data=Jan09W,이동인구.합.~도착.행정동.코드+성별+나이,sum)

write.csv(Jan09Ws,".../6월9시수.csv",row.names=F, fileEncoding = 'cp949')

Jan09TH<-Jan09[c(which(Jan09$요일 == "목")),]
Jan09TH<-Jan09TH[c(which(Jan09TH$도착.행정동.코드=="1102069"),which(Jan09TH$도착.행정동.코드=="1102055"),which(Jan09TH$도착.행정동.코드=="1103073"),which(Jan09TH$도착.행정동.코드=="1104068"),which(Jan09TH$도착.행정동.코드=="1105056"),which(Jan09TH$도착.행정동.코드=="1105067"),which(Jan09TH$도착.행정동.코드=="1107071"),which(Jan09TH$도착.행정동.코드=="1108085"),which(Jan09TH$도착.행정동.코드=="1109061"),which(Jan09TH$도착.행정동.코드=="1111077"),which(Jan09TH$도착.행정동.코드=="1112071"),which(Jan09TH$도착.행정동.코드=="1112073"),which(Jan09TH$도착.행정동.코드=="1114063"),which(Jan09TH$도착.행정동.코드=="1115069"),which(Jan09TH$도착.행정동.코드=="1115063")),]
Jan09THs <- aggregate(data=Jan09TH,이동인구.합.~도착.행정동.코드+성별+나이,sum)

write.csv(Jan09THs,".../6월9시목.csv",row.names=F, fileEncoding = 'cp949')

Jan09F<-Jan09[c(which(Jan09$요일 == "금")),]
Jan09F<-Jan09F[c(which(Jan09F$도착.행정동.코드=="1102069"),which(Jan09F$도착.행정동.코드=="1102055"),which(Jan09F$도착.행정동.코드=="1103073"),which(Jan09F$도착.행정동.코드=="1104068"),which(Jan09F$도착.행정동.코드=="1105056"),which(Jan09F$도착.행정동.코드=="1105067"),which(Jan09F$도착.행정동.코드=="1107071"),which(Jan09F$도착.행정동.코드=="1108085"),which(Jan09F$도착.행정동.코드=="1109061"),which(Jan09F$도착.행정동.코드=="1111077"),which(Jan09F$도착.행정동.코드=="1112071"),which(Jan09F$도착.행정동.코드=="1112073"),which(Jan09F$도착.행정동.코드=="1114063"),which(Jan09F$도착.행정동.코드=="1115069"),which(Jan09F$도착.행정동.코드=="1115063")),]
Jan09Fs <- aggregate(data=Jan09F,이동인구.합.~도착.행정동.코드+성별+나이,sum)

write.csv(Jan09Fs,".../6월9시금.csv",row.names=F, fileEncoding = 'cp949')

Jan09S<-Jan09[c(which(Jan09$요일 == "토")),]
Jan09S<-Jan09S[c(which(Jan09S$도착.행정동.코드=="1101061"),which(Jan09S$도착.행정동.코드=="1102069"),which(Jan09S$도착.행정동.코드=="1103073"),which(Jan09S$도착.행정동.코드=="1107071"),which(Jan09S$도착.행정동.코드=="1109061"),which(Jan09S$도착.행정동.코드=="1112071"),which(Jan09S$도착.행정동.코드=="1112073"),which(Jan09S$도착.행정동.코드=="1114063"),which(Jan09S$도착.행정동.코드=="1115069"),which(Jan09S$도착.행정동.코드=="1115063")),]
Jan09Ss <- aggregate(data=Jan09S,이동인구.합.~도착.행정동.코드+성별+나이,sum)

write.csv(Jan09Ss,".../6월9시토.csv",row.names=F, fileEncoding = 'cp949')

Jan09SU<-Jan09[c(which(Jan09$요일 == "일")),]
Jan09SU<-Jan09SU[c(which(Jan09S$도착.행정동.코드=="1102069"),which(Jan09S$도착.행정동.코드=="1103073"),which(Jan09S$도착.행정동.코드=="1107071"),which(Jan09S$도착.행정동.코드=="1109061")),]
Jan09SUs <- aggregate(data=Jan09SU,이동인구.합.~도착.행정동.코드+성별+나이,sum)

write.csv(Jan09SUs,".../6월9시일.csv",row.names=F, fileEncoding = 'cp949')

rm(list=ls())