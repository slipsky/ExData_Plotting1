setwd("C:/Users/slipsky/Desktop/Coursera/ExploratoryDataCourseProject1/ExData_Plotting1")

##read the already-truncated data file (with only correct dates)
data = read.table("household_power_consumption2.txt", sep=";",header=TRUE)
data$Date <- strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")

##clear plotting area
dev.off()
plot.new()

##create graphs.  add in par() to arrange the four graphs in the right matrix
png(file="plot4a.png",width=480,height=480)
par(mfcol=c(2,2))
plot(data$Date,data$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")

plot(data$Date,data$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
lines(data$Date,data$Sub_metering_2,type="l",col="red")
lines(data$Date,data$Sub_metering_3,type="l",col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col=c("black","red","blue"),lwd=1,cex=0.7)

plot(data$Date,data$Voltage,type="l",xlab="datetime",ylab="Voltage")

plot(data$Date,data$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")

##save as png)
dev.off()