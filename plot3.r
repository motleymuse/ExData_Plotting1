data <- read.table("household_power_consumption.txt", header = TRUE, stringsAsFactors=FALSE, sep=";")
datasub <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
dtime <- as.POSIXlt(paste(as.Date(datasub$Date, format="%d/%m/%Y"), datasub$Time, sep=" "))
plot(dtime, datasub$Sub_metering_1, xlab=" ", ylab="Energy sub metering", lines(dtime, datasub$Sub_metering_1, type="l"), pch=20)
lines(dtime, datasub$Sub_metering_2, type="l", col="Red")
lines(dtime, datasub$Sub_metering_3, type="l", col="Blue")
xrange <- range(dtime) 
yrange <- range(datasub$Sub_metering_1)
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=c(1,1), col=c("black","red","blue"))
