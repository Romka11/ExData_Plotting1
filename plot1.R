#bring in file#
household_power_consumption <- read.csv("~/R/Exploratory Data analysis/household_power_consumption.txt", sep=";")

#Subset for the two days, 1/2/2007 and 2/2/2007.# 
>newset<-filter(household_power_consumption, household_power_consumption$Date=="1/2/2007"|household_power_consumption$Date=="2/2/2007")

#plot histogram#
> png(filename="plot1.png", width= 480, height = 480, units="px")
> plot1<-hist(as.numeric(newset$Global_active_power), col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
> dev.off()
