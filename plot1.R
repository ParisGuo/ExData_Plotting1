## From a high level, filter() and select() are different verbs in the tidyverse. filter() operates on rows, whereas select() operates on columns.

#set working directory
setwd("C:/Users/ppppp/R Programming/Course_project1")
#read the sourcefile
sourcefile <- "household_power_consumption.txt"
powerDT <- read.table(sourcefile,header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = "." )
names(powerDT) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
#subset seleceted dagte
sub_powerDT <- subset(powerDT, powerdata$Date=="1/2/2007" |powerdata$Date=="2/2/2007" )
#create the histogram for global active power
activepower <- as.numeric(sub_powerDT$Global_active_power)
png("plot1.png")
hist(activepower, col="red", main="Global Active Power", xlab="Global Active Power(kilowatts)")
