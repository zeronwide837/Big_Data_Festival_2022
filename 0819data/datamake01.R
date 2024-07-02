######################################################################################################
##########################동별 상권집객시설현황 데이터 제작용 코드###########################
######################################################################################################

market<-read.csv('.../상권집객시설.csv',header=T,fileEncoding = "euc-kr")
market<-market[-c(which(market$기준_년_코드!="2022")),]
market<-market[,-c(1,2)]

market$상권_코드<-as.numeric(market$상권_코드)

Jongro1234 <- market[c(which(market$상권_코드==2110019),which(market$상권_코드==2120010),which(market$상권_코드==2120008),which(market$상권_코드==2120006),which(market$상권_코드==2120009),which(market$상권_코드==2120004),which(market$상권_코드==2120011),which(market$상권_코드==2130006),which(market$상권_코드==2130005),which(market$상권_코드==2130003),which(market$상권_코드==2130007),which(market$상권_코드==2130004),which(market$상권_코드==1001494)),]

write.csv(Jongro1234,".../종로1234가동.csv",row.names=F, fileEncoding = 'cp949')

Sindang <- market[c(which(market$상권_코드==2110053),which(market$상권_코드==2110051),which(market$상권_코드==2120039),which(market$상권_코드==2130043),which(market$상권_코드==2130048),which(market$상권_코드==2130049),which(market$상권_코드==2130044),which(market$상권_코드==2130047),which(market$상권_코드==2130041),which(market$상권_코드==2130046),which(market$상권_코드==2130040),which(market$상권_코드==2130045),which(market$상권_코드==2130050),which(market$상권_코드==1001494)),]

write.csv(Sindang,".../신당동.csv",row.names=F, fileEncoding = 'cp949')

Myeongdong <- market[c(which(market$상권_코드==2110041),which(market$상권_코드==2120029),which(market$상권_코드==2120023),which(market$상권_코드==2120026),which(market$상권_코드==2120028),which(market$상권_코드==2120030),which(market$상권_코드==2120027),which(market$상권_코드==2130030),which(market$상권_코드==2130028),which(market$상권_코드==2130029)),]

write.csv(Myeongdong,".../명동.csv",row.names=F, fileEncoding = 'cp949')

Hangang <- market[c(which(market$상권_코드==2110073),which(market$상권_코드==2110070),which(market$상권_코드==2110076),which(market$상권_코드==2110062),which(market$상권_코드==2120044),which(market$상권_코드==2120041)),]

write.csv(Hangang,".../한강로동.csv",row.names=F, fileEncoding = 'cp949')

Seongsu <- market[c(which(market$상권_코드==2110132),which(market$상권_코드==2110137),which(market$상권_코드==2120052),which(market$상권_코드==2130071)),]

write.csv(Seongsu,".../성수2가3동.csv",row.names=F, fileEncoding = 'cp949')

Junggok <- market[c(which(market$상권_코드==2110165),which(market$상권_코드==2110162),which(market$상권_코드==2110167)),]

write.csv(Junggok,".../중곡2동.csv",row.names=F, fileEncoding = 'cp949')

Jayang <- market[c(which(market$상권_코드==2110139),which(market$상권_코드==2110140),which(market$상권_코드==2130077),which(market$상권_코드==2130075),which(market$상권_코드==2130074)),]

write.csv(Jayang,".../자양4동.csv",row.names=F, fileEncoding = 'cp949')

Myeonmok <- market[c(which(market$상권_코드==2110264),which(market$상권_코드==2110258),which(market$상권_코드==2110260),which(market$상권_코드==2110263),which(market$상권_코드==2130111)),]

write.csv(Myeonmok,".../면목본동.csv",row.names=F, fileEncoding = 'cp949')

write.csv(Seokgwan,".../석관동.csv",row.names=F, fileEncoding = 'cp949')

Beon <- market[c(which(market$상권_코드==2110380),which(market$상권_코드==2110375)),]

write.csv(Beon,".../번2동.csv",row.names=F, fileEncoding = 'cp949')

Chang <- market[c(which(market$상권_코드==2110401),which(market$상권_코드==2110409),which(market$상권_코드==2110408)),]

write.csv(Chang,".../창5동.csv",row.names=F, fileEncoding = 'cp949')

Sanggye <- market[c(which(market$상권_코드==2120082),which(market$상권_코드==2130154)),]

write.csv(Sanggye,".../상계67동.csv",row.names=F, fileEncoding = 'cp949')

Jingwan <- market[c(which(market$상권_코드==2110492),which(market$상권_코드==2120089)),]

write.csv(Jingwan,".../진관동.csv",row.names=F, fileEncoding = 'cp949')

Eungam <- market[c(which(market$상권_코드==2110461),which(market$상권_코드==2110463),which(market$상권_코드==2110471),which(market$상권_코드==2110469),which(market$상권_코드==2130165),which(market$상권_코드==2130163)),]

write.csv(Eungam,".../응암3동.csv",row.names=F, fileEncoding = 'cp949')

Hongje <- market[c(which(market$상권_코드==2110523),which(market$상권_코드==2110519),which(market$상권_코드==2110521),which(market$상권_코드==2110522),which(market$상권_코드==2120095)),]

write.csv(Hongje,".../홍제1동.csv",row.names=F, fileEncoding = 'cp949')

Hongeun <- market[c(which(market$상권_코드==2110504),which(market$상권_코드==2110516),which(market$상권_코드==2110507),which(market$상권_코드==2110515)),]

write.csv(Hongeun,".../홍은2동.csv",row.names=F, fileEncoding = 'cp949')

Sinsu <- market[c(which(market$상권_코드==2110570),which(market$상권_코드==2110571),which(market$상권_코드==2110572),which(market$상권_코드==2130193)),]

write.csv(Sinsu,".../신수동.csv",row.names=F, fileEncoding = 'cp949')

SinWall <- market[c(which(market$상권_코드==2110600),which(market$상권_코드==2110602),which(market$상권_코드==2110598),which(market$상권_코드==2130200)),]

write.csv(SinWall,".../신월7동.csv",row.names=F, fileEncoding = 'cp949')
