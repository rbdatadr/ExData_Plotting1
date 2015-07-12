source("plot2.R")
source("plot3.R")

plot4 <- function(){
	
	d<- read.csv("data.txt", header = T, sep=";", na.strings = "?", as.is=T)
	d<- d[d$Date== "1/2/2007" | d$Date=="2/2/2007",]
	d <- d[complete.cases(d),]

	png("plot4.png", bg ="transparent")
	
	par(mfcol = c(2,2))
	
	plot_2(d)
	plot_3(d, "n")
	
	plot_5(d)
	plot_6(d)
	
	dev.off()
	
}

plot_5 <- function(d){
	
	plot(1:nrow(d), d$Voltage, xaxt='n', type="l", xlab="datetime", 
		ylab="Voltage")
	axis(1, at = c(1, which(d$Date=="2/2/2007")[1], nrow(d)), 
		labels=c("Thu", "Fri", "Sat"), tick=T)
}

plot_6 <- function(d){
	plot(1:nrow(d), d$Global_reactive_power, xaxt='n', type="l", xlab="datetime", 
		ylab="Global_reactive_power")
	axis(1, at = c(1, which(d$Date=="2/2/2007")[1], nrow(d)), 
		labels=c("Thu", "Fri", "Sat"), tick=T)
}