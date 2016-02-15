x<-read.csv2("hpc.txt")
x<-subset(x,Date %in% c("1/2/2007","2/2/2007"))
x$Global_active_power<- as.numeric(x$Global_active_power)/1000
png("plot1.png",width = 480, height = 480)
hist(x$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
