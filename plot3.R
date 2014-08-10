#data <- read.csv.sql("household_power_consumption.txt", sep=";",sql='select * from file where Date = "1/2/2007" or Date="2/2/2007"')
#data$Date <- strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")

png("plot3.png")
plot(data$Date, data$Sub_metering_1,col="black",type="l",ylab="Energy sub metering", xlab="")
lines(data$Date, data$Sub_metering_2,col="red")
lines(data$Date, data$Sub_metering_3,col="blue")
legend("topright", pch = "_", col = c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
