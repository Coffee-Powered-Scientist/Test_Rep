
##Date Script
setwd("~/")

n <-12

Years<-rep(2005:2505, each=n)

Years<-as.character(Years)

write.csv2(Years, "Years.csv", row.names = TRUE)
