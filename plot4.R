png(filename="plot4.png", width= 480, height = 480, units="px")
par(mfrow=c(2,2))
##1st plot##
plot(newset2$DT, newset2$Global_active_power, type="l", ylab = "Global Active Power (kilowatts)", xlab = "")

##2nd plot##
plot(newset2$DT, newset2$Voltage, type="l", ylab="Voltage",xlab="datetime")
##3rd plot##
plot(newset2$DT, newset2$Sub_metering_1, col="grey", ylab="Energy sub metering", xlab="", type="l")
lines(newset2$DT, newset2$Sub_metering_2, col="red", type="l")
lines(newset2$DT, newset2$Sub_metering_3, col="blue", type="l")
legend("topright", pch="-",lwd = 3, col = c("grey", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

##4th plot##
plot(newset2$DT, newset2$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime")
dev.off()
