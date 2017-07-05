setwd("/Users/guruprasadvijendra/datasciencecoursera/EDA-Week1")
df <- read.table("household_power_consumption 2.txt",header = TRUE, sep = ";", na.strings = "?")
subsetdf<-subset(df, Date %in% c("1/2/2007","2/2/2007"))
hist(subsetdf$Global_active_power,xlab = "Global Active Power(kilowatts)",ylab = "Frequency",main = "Global Active Power",col="red")
