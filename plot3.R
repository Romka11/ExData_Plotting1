
png(filename="plot3.png", width= 480, height = 480, units="px")
plot(newset2$DT, newset2$Sub_metering_1, col="grey", ylab="Energy sub metering", xlab="", type="l")
lines(newset2$DT, newset2$Sub_metering_2, col="red", type="l")
lines(newset2$DT, newset2$Sub_metering_3, col="blue", type="l")
legend("topright", pch="-",lwd = 3, col = c("grey", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()


