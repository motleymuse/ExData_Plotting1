data <- read.table("household_power_consumption.txt", header = TRUE, stringsAsFactors=FALSE, sep=";")
datasub <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
dtime <- as.POSIXlt(paste(as.Date(datasub$Date, format="%d/%m/%Y"), datasub$Time, sep=" "))
plot(dtime, datasub$Global_active_power, xlab=" ", ylab="Global Active Power (kilowatts)", lines(dtime, datasub$Global_active_power, type="l"), pch= 20)