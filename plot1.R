# Exploratory Data Analysis Week 1 Assignment
# Plot 1

# Read in  the data
setwd("~/Desktop/2016 Coursera Data Science/04_Exploratory/Week 1")
rawdata <- read.table("household_power_consumption.txt",sep=";",header = TRUE, stringsAsFactors = FALSE)
plotdata <- rawdata[rawdata$Date %in% c("1/2/2007","2/2/2007"),] 
plotdata$datetime <- strptime(paste(plotdata$Date, plotdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

# Plot 1 Histogram of household power consumption
png("plot1.png", width=480, height=480)
hist(as.numeric(plotdata$Global_active_power),col="red",main="Global Active Power",
     xlab = "Global Active Power (kilowatts)")
dev.off()