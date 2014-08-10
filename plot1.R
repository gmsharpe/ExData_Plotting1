#  data <- read.table("household_power_consumption.txt", 
#                     header=TRUE, 
#                     sep=";", 
#                     na.strings="?",
#                     colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"));


library(sqldf)
data <- read.csv.sql("household_power_consumption.txt", sep=";",sql='select * from file where Date = "1/2/2007" or Date="2/2/2007"')
data$Date <- strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")
png("plot1.png")
hist(data$Global_active_power,col="red", xlab="Global Active Power (kilowatts)")

