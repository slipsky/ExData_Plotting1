setwd("C:/Users/slipsky/Desktop/Coursera/ExploratoryDataCourseProject1/ExData_Plotting1")

##clear plotting area
dev.off()
plot.new()

##read the already-truncated data file (with only correct dates)
data = read.table("household_power_consumption2.txt", sep=";",header=TRUE)
data$Date <- strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")

##create graph
plot(data$Date,data$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")

##save as png
dev.copy(png,'plot2a.png',width=480,height=480)
dev.off()
