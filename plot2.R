#add new column combining date and time#
newset2<-mutate(newset, DT=dmy_hms(paste(newset$Date,newset$Time)))

#plot graph#
plot(newset2$DT, newset2$Global_active_power, type="l", ylab = "Global Active Power (kilowatts)")
png(filename="plot2.png", width= 480, height = 480, units="px")
plot2<-plot(newset2$DT, newset2$Global_active_power, type="l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()

