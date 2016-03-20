# Exploratory Data Analysis Week 1 Assignment
# Plot 3

# Read in  the data
setwd("~/Desktop/2016 Coursera Data Science/04_Exploratory/Week 1")
rawdata <- read.table("household_power_consumption.txt",sep=";",header = TRUE, stringsAsFactors = FALSE)
plotdata <- rawdata[rawdata$Date %in% c("1/2/2007","2/2/2007"),] 
plotdata$datetime <- strptime(paste(plotdata$Date, plotdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

# Plot 3
x <- plotdata$datetime
y1 <- plotdata$Sub_metering_1
y2 <- plotdata$Sub_metering_2
y3 <- plotdata$Sub_metering_3

png("plot3.png", width=480, height=480)
plot(x,y1,type="n",xlab="",ylab="Energy sub metering")
lines(x,y1,col="black")
lines(x,y2,col="red")
lines(x,y3,col="blue")
legend("topright",legend=c(names(plotdata[7:9])),cex=.5, lty=1, col=c("black","red","blue"))
dev.off()


