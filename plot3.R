setwd("/Users/guruprasadvijendra/datasciencecoursera/EDA-Week1")
df <- read.table("household_power_consumption 2.txt",header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
dfsubset <- df[df$Date %in% c("1/2/2007","2/2/2007"),]
timeperiod <- strptime(paste(dfsubset$Date,dfsubset$Time,sep=" "), "%d/%m/%Y %H:%M:%S")
plot(timeperiod,dfsubset$Sub_metering_1,xlab=" ", ylab="Energy Sub Metering",type="n")
points(timeperiod,dfsubset$Sub_metering_1,col="gray",type="l")
points(timeperiod,dfsubset$Sub_metering_2,col="red",type="l")
points(timeperiod,dfsubset$Sub_metering_3,col="blue",type="l")
legend("topright",pch = c("-","-","-"),col=c("gray","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

#globalactivepower <- as.numeric(dfsubset$Global_active_power)

