hist(as.numeric(eda_data$Global_active_power),breaks=12,col="red",main="Global Active Power", xlab="Global Active Power(kilowatts")
dev.copy(png,"plot1.png")
dev.off()
