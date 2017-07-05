setwd("/Users/guruprasadvijendra/datasciencecoursera/EDA-Week1")
df <- read.table("household_power_consumption 2.txt",header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
dfsubset <- df[df$Date %in% c("1/2/2007","2/2/2007"),]
timeperiod <- strptime(paste(dfsubset$Date,dfsubset$Time,sep=" "), "%d/%m/%Y %H:%M:%S")
globalactivepower <- as.numeric(dfsubset$Global_active_power)
plot(timeperiod,globalactivepower,type = "l", xlab = "", ylab = "Global Active Power (Kilowatts)")
dev.off()