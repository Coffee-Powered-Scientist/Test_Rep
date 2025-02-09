

rm(list = ls())

###Read in Weather_Data####

library(dplyr)
library(lubridate)

setwd("~/Project_Master/Test_Rep/Data")

Weather_Data<-read.csv2("~/Project_Master/Test_Rep/Data/PRISM_Data_Metadata.csv")

Weather_Data$Date<-as.Date(Weather_Data$Date, "%m/%d/%Y")

Weather_Data[,2:6] <- sapply(Weather_Data[,2:6],as.numeric)

#Get rid of leap year days

Weather_Data<-Weather_Data[!grepl("02-29", Weather_Data$Date),]

# Create DOY Column

Weather_Data$DOY<-rep(1:365, 27)

Weather_Data_AVG<-Weather_Data %>% group_by(DOY) %>% summarise(across(ppt:tdmean, ~mean(.x, na.rm=TRUE)))

# Scale to 2500 mm

Weather_Data_AVG$ppt<-Weather_Data_AVG$ppt*(1+(2500-sum(Weather_Data_AVG$ppt))/sum(Weather_Data_AVG$ppt))

#Used for repeating the rainfall and mean temp data for every year
#Weather_Data_FINAL<-do.call("rbind", replicate(550, Weather_Data_AVG, simplify = FALSE))


write.csv(Weather_Data_AVG, "PET_Dataset.csv")