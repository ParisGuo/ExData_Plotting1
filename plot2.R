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

png("plot2.png")
plot(datetime, activepower, type="l", xlab = "", ylab = "Global Active Power(kilowatts)")