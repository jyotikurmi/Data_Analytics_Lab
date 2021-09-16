a<-read.csv("PAICOL.csv",header = TRUE, sep = ",")
View(a)
data1 <- a


data1$DATE=as.Date(data1$DATE,origin=a$DATE[1])
View(data1)
summary(data1)
library(ggplot2)
ggplot( data = data1, aes( DATE, LEVEL )) + geom_line()
ggplot( data = data1, aes( RAIN, LEVEL )) + geom_point()
ggplot(data1,aes(DATE,LEVEL))+geom_line(aes(color="LEVEL"))+
  geom_line(data=data1,aes(DATE,RAIN,color="RAIN"))
index_max=data1$LEVEL==max(data1$LEVEL)
index_min=data1$LEVEL==min(data1$LEVEL)

ggplot(data1,aes(DATE,LEVEL))+geom_line(aes(color="LEVEL"))+
  geom_point(data=data1[index_max,],aes(DATE,LEVEL,color="MAX"))+
  geom_point(data=data1[index_min,],aes(DATE,LEVEL,color="MIN"))

data1$YEAR = as.numeric(format(data1$DATE, "%Y"))
index_2001=data1$YEAR==2001

ggplot(data1[index_2001,],aes(DATE,LEVEL))+geom_line(aes(color="LEVEL"))
