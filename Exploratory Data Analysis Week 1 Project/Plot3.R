library(readr)
PowerConsumption <- read_delim("C:/Users/HP/Desktop/household_power_consumption.txt", 
                               ";", escape_double = FALSE, col_types = cols(Date = col_date(format = "%d/%m/%Y"), 
                                                                            Time = col_time(format = "%H:%M:%S"), 
                                                                            Global_active_power = col_number(), 
                                                                            Global_reactive_power = col_number(), 
                                                                            Voltage = col_number(), Global_intensity = col_number(), 
                                                                            Sub_metering_1 = col_number(), Sub_metering_2 = col_number(), 
                                                                            Sub_metering_3 = col_number()), na = "NA", 
                               trim_ws = TRUE)


View(PowerConsumption)

attach(PowerConsumption)

library(dplyr)

subsetdata <- subset(PowerConsumption, Date == "2007-02-01" | Date =="2007-02-02")

attach(subsetdata)

with(powerdata, {
        plot(Sub_metering_1~Date.Time, type="l",
             ylab="Global Active Power (kilowatts)", xlab="")
        lines(Sub_metering_2~Date.Time,col='Red')
        lines(Sub_metering_3~Date.Time,col='Blue')
})

legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
