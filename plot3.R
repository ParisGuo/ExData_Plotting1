#set working directory
setwd("C:/Users/ppppp/R Programming/Course_project1")

#read the source file
sourcefile <- "household_power_consumption.txt"
powerDT <- read.table(sourcefile,header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = "." )

#subset selected date
sub_powerDT <- powerDT[powerDT$Date %in% c("1/2/2007","2/2/2007" ),]

#create the histogram for global active power
datetime <- strptime(paste(sub_powerDT$Date, sub_powerDT$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
activepower <- as.numeric(sub_powerDT$Global_active_power)
sub_metering_1 <- as.numeric(sub_powerDT$Sub_metering_1)
sub_metering_2 <- as.numeric(sub_powerDT$Sub_metering_2)
sub_metering_3 <- as.numeric(sub_powerDT$Sub_metering_3)

png("plot3.png")
plot(datetime, sub_metering_1, type="l", xlab = "", ylab = "Energy sub metering",col="black")
lines(datetime, sub_metering_2, type="l", xlab = "", col="red")
lines(datetime, sub_metering_3, type="l", xlab = "", col="blue")
legend("topright", c("sub_metering_1","sub_metering_2","sub_metering_3"),lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()