data <- read.table("household_power_consumption.txt", header = TRUE, stringsAsFactors=FALSE, sep=";")
datasub <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
h <- as.numeric(as.vector(datasub$Global_active_power))
hist(h, col="Red", xlab="Global Active Power (kilowatts)", main="Global Active Power")