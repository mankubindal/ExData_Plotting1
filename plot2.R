x<-read.csv2("hpc.txt")
x<-subset(x,Date %in% c("1/2/2007","2/2/2007"))
x$Global_active_power<- as.numeric(x$Global_active_power)/1000
png("plot2.png",width = 480, height = 480)
datetime <- strptime(paste(x$Date, x$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
plot(datetime,x$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
