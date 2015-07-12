plot3 <- function(){

	d<- read.csv("data.txt", header = T, sep=";", na.strings = "?", as.is=T)
	d<- d[d$Date== "1/2/2007" | d$Date=="2/2/2007",]
	d <- d[complete.cases(d),]

	png("plot3.png", bg ="transparent")
	
	plot(1:nrow(d), d$Sub_metering_1, xaxt='n', type="l", xlab="", 
		ylab="Energy sub metering")
	points(1:nrow(d), d$Sub_metering_2,  col="red", type = "l")
	points(1:nrow(d), d$Sub_metering_3,  col="blue", type="l")
	axis(1, at = c(1, which(d$Date=="2/2/2007")[1], nrow(d)), 
		labels=c("Thu", "Fri", "Sat"), tick=T)
	legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1, 1, 1), col = c("black", "red", "blue"))
	dev.off()
	
}
