setwd("C:/Users/slipsky/Desktop/Coursera/ExploratoryDataCourseProject1/ExData_Plotting1")

##read the already-truncated data file (with only correct dates)
data = read.table("household_power_consumption2.txt", sep=";",header=TRUE)
data$Date <- strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")

##clear plotting area
dev.off()
plot.new()

##create graph, add in additional data lines, create legend
png(file="plot3.png",width=480,height=480)

plot(data$Date,data$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
lines(data$Date,data$Sub_metering_2,type="l",col="red")
lines(data$Date,data$Sub_metering_3,type="l",col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col=c("black","red","blue"),lwd=1,cex=0.7)

##save as png
dev.off()