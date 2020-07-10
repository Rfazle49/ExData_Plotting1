

par(mfrow=c(2,2))
with(subsetdata, plot(Date.Time, Global_active_power, type="l", xlab="", ylab="Global Active Power"))

with(subsetdata, plot(Date.Time, Voltage, type = "l", xlab="datetime", ylab="Voltage"))

with(subsetdata, plot(Date.Time, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering"))

lines(subsetdata$Date.Time, subsetdata$Sub_metering_2,type="l", col= "red")

lines(subsetdata$Date.Time, subsetdata$Sub_metering_3,type="l", col= "blue")

legend(c("topright"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty= 1, lwd=2, col = c("black", "red", "blue"))

with(subsetdata, plot(Date.Time, Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power"))
dev.off()