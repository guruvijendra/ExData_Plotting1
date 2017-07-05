setwd("/Users/guruprasadvijendra/datasciencecoursera/EDA-Week1")
df <- read.table("household_power_consumption 2.txt",header = TRUE, sep = ";", na.strings = "?")
options(scipen = 5)
hist(df$Global_active_power,xlab = "Global Active Power(kilowatts)",ylab = "Frequency",main = "Global Active Power",col="red")
