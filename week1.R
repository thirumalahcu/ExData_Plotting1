library(readr)
household_power_consumption <- read_delim("/Desktop/github/exdata%2Fdata%2Fhousehold_power_consumption/household_power_consumption.txt", 
                                                 ";", escape_double = FALSE, trim_ws = TRUE)

# Quality checks
summary(household_power_consumption)
table(household_power_consumption$Date)

# use data from the dates 2007-02-01 and 2007-02-02

eda_data <- household_power_consumption[ which(household_power_consumption$Date =='01/2/2007' |
                                                 household_power_consumption$Date =='2/2/2007'),]



#using eda_data which is filtered 2 day data see main.R for code
plot(1:nrow(eda_data),as.numeric(eda_data$Sub_metering_1),main="", ylab="Energy sub metering",xlab="",type="l",col="black",axes=FALSE)
par(new=T)
plot(as.numeric(eda_data$Sub_metering_2),col="red",type="l",axes=FALSE,ylim=c(0,40),xlab="",ylab="")
par(new=T)
plot(as.numeric(eda_data$Sub_metering_3),col="blue",type="l",axes=FALSE,ylim=c(0,40),xlab="",ylab="")
axis(1, at = c(0,1500,2900),labels = c("Thu","Fri","Sat"))
axis(2, at = c(0,10,20,30),labels = c("0","10","20","30"))
legend("topright",legend=c("sub-metering1","sub-metering2","sub-metering3"),col=c("black","red","blue"),lty=c(1,1,1),lwd=2)
box(lty = 1, col = 'black')
dev.copy(png,"plot3.png")
dev.off()



#using eda_data which is filtered 2 day data see main.R for code
par(new=F)
par(mfrow=c(2,2))
plot(as.numeric(eda_data$Global_active_power),main ="Global Active Power",type="l", ylab="Global Active Power(kilowatts)",xlab="",axes=FALSE)
axis(1, at = c(0,1500,2900),labels = c("Thu","Fri","Sat"))
axis(2,at=c(0,2,4,6))
box(lty = 1, col = 'black')
#voltage
plot(as.numeric(eda_data$Voltage),main="voltage",type="l", ylab="voltage",xlab="",axes=FALSE)
axis(1, at = c(0,1500,2900),labels = c("Thu","Fri","Sat"))
axis(2,at=c(234,238,240,242),labels=c("234","238","240","242"))
box(lty = 1, col = 'black')
#plot3
plot(1:nrow(eda_data),as.numeric(eda_data$Sub_metering_1),main="Energy metering", ylab="Energy sub metering",xlab="",type="l",col="black",axes=FALSE)
par(new=T)
plot(as.numeric(eda_data$Sub_metering_2),col="red",type="l",axes=FALSE,ylim=c(0,40),xlab="",ylab="")
par(new=T)
plot(as.numeric(eda_data$Sub_metering_3),col="blue",type="l",axes=FALSE,ylim=c(0,40),xlab="",ylab="")
axis(1, at = c(0,1500,2900),labels = c("Thu","Fri","Sat"))
axis(2, at = c(0,10,20,30),labels = c("0","10","20","30"))
legend("topright",legend=c("sub-metering1","sub-metering2","sub-metering3"),col=c("black","red","blue"),lty=c(1,1,1),lwd=2)
box(lty = 1, col = 'black')
par(new=F)
plot(as.numeric(eda_data$Global_reactive_power),main ="Global Reactive Power",type="l", ylab="",xlab="",axes=FALSE)
axis(1, at = c(0,1500,2900),labels = c("Thu","Fri","Sat"))
axis(2,at=c(0.1,0.2,0.3,0.4),c("0.1","0.2","0.3","0.4"))
box(lty = 1, col = 'black')
dev.copy(png,"plot4.png")
dev.off()










