library(sqldf)
data <- read.csv.sql("household_power_consumption.txt", sep=";",sql='select * from file where Date = "1/2/2007" or Date="2/2/2007"')
data$Date <- strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")

#png("plot2.png")
plot(data$Date,data$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
