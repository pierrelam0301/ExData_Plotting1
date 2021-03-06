 data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
 data07 <- rbind(data[data$Date == "1/2/2007",], data[data$Date == "2/2/2007",])
 data07$Date <- as.Date(data07$Date, "%d/%m/%Y")
 data07 <- cbind(data07, "Datetime07" = as.POSIXct(paste(data07$Date, data07$Time)))
 plot(data07$Global_active_power~data07$Datetime07, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
 dev.copy(png, file="plot2.png", height = 480, width = 480)
 dev.off()
