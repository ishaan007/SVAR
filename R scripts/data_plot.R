#first read data

library(ggplot2)
library("reshape2")

# National Stock Exchange Closing Price vs Time (Months)
ggplot(data=nsefinal,
       aes(x=Date, y=Close) )+
  geom_line(color=I('#652da8'))+
  geom_smooth(method='lm',color='red')+ggtitle("Closing Price vs Months")+
  xlab("Months")+ylab("Closing Price")
theme(
  panel.background = element_rect(fill = "lightblue"),
  panel.grid.minor = element_line(linetype = "dotted"),
  legend.position = "none"
)
  
  

# log 10
ggplot(data=dat,
       aes(x=Dt, y=Close) )+
  geom_line(color=I('#652da8'))+scale_y_continuous(trans='log10')+
  geom_smooth(method='lm',color='red')+ggtitle(" Log 10 Closing Price vs Months")+
  xlab("Months")+ylab(" Log 10 Closing Price")


fit = lm(dat$Close~dat$Dt, na.action=NULL)


# detrending of the data by taking residuals
ggplot(data=dat,
       aes(x=Dt, y=resid(fit)) )+
  geom_line(color=I('#652da8'))+ggtitle("Detrended Closing Price vs Months")+
  xlab("Months")+ylab("Detrended Closing Price")


# difference
a<-diff(dat$Close)
a[187]=304.4571



ggplot(data=dat,
       aes(x=Dt, y=a))+
  geom_line()+ggtitle("Difference Closing Price vs Months")+
  xlab("Months")+ylab(" Difference Closing Price")



# GDP 

dat<-read.csv("finalgdp.csv")
library(ggplot2)
library("reshape2")

# normal curve
ggplot(data=dat,
       aes(x=Dt, y=Value) )+
  geom_line(color=I('#652da8'))+
  geom_smooth(method='lm',color='red')+ggtitle("GDP vs Months")+
  xlab("Months")+ylab("GDP")

# log 10
ggplot(data=dat,
       aes(x=Dt, y=Value) )+
  geom_line(color=I('#652da8'))+scale_y_continuous(trans='log10')+
  geom_smooth(method='lm',color='red')+ggtitle(" Log 10 GDP vs Months")+
  xlab("Months")+ylab(" Log 10 GDP")


fit = lm(dat$Value~dat$Dt, na.action=NULL)


# detrended
ggplot(data=dat,
       aes(x=Dt, y=resid(fit)) )+
  geom_line(color=I('#652da8'))+ggtitle("Detrended GDP vs Months")+
  xlab("Months")+ylab("Detrended GDP")

//difference
a<-diff(dat$Value)
a[192]=0



ggplot(data=dat,
       aes(x=Dt, y=a))+
  geom_line()+ggtitle("Difference GDP vs Months")+
  xlab("Months")+ylab(" Difference GDP")


dat<-read.csv("finalmibid.csv")
library(ggplot2)
library("reshape2")

# normal curve
ggplot(data=dat,
       aes(x=Dt, y=BID) )+
  geom_line(color=I('#652da8'))+
  geom_smooth(method='lm',color='red')+ggtitle("MIBID vs Months")+
  xlab("Months")+ylab("MIBID")

# log 10
ggplot(data=dat,
       aes(x=Dt, y=BID) )+
  geom_line(color=I('#652da8'))+scale_y_continuous(trans='log10')+
  geom_smooth(method='lm',color='red')+ggtitle(" Log 10 MIBID vs Months")+
  xlab("Months")+ylab(" Log 10 MIBID")


fit = lm(dat$BID~dat$Dt, na.action=NULL)

# detrended

ggplot(data=dat,
       aes(x=Dt, y=resid(fit)) )+
  geom_line(color=I('#652da8'))+ggtitle(" Detrended MIBID vs Months")+
  xlab("Months")+ylab("Detrended MIBID")

# difference
a<-diff(dat$BID)
a[188]=-0.1811957



ggplot(data=dat,
       aes(x=Dt, y=a))+
  geom_line()+ggtitle("Difference MIBID vs Months")+
  xlab("Months")+ylab(" Difference MIBID")

