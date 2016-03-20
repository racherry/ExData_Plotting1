# Exploratory Data Analysis Week 1 Assignment
# Plot 2

# Read in  the data
setwd("~/Desktop/2016 Coursera Data Science/04_Exploratory/Week 1")
rawdata <- read.table("household_power_consumption.txt",sep=";",header = TRUE, stringsAsFactors = FALSE)
plotdata <- rawdata[rawdata$Date %in% c("1/2/2007","2/2/2007"),] 
plotdata$datetime <- strptime(paste(plotdata$Date, plotdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

# Plot 2 Global Active Power vs DOW - Thurs / Fri / Sat
x <- plotdata$datetime
y <- plotdata$Global_active_power
png("plot2.png", width=480, height=480)
plot(x,y,type="l",ylab = "Global Active Power (kilowatts)",xlab = "")
dev.off()