plot2 <- function(){
	library(sqldf)

	d <- read.csv.sql("data.txt", 
		sql = "select * from file where Date='1/2/2007' OR Date='2/2/2007'", 
		header = T, sep=";")	

	png("plot2.png", bg ="transparent")
	plot_2(d)
	dev.off()
	
}

plot_2 <- function(d){
	plot(1:nrow(d), d$Global_active_power, xaxt='n', type="l", xlab="", 
		ylab="Global Active Power (kilowatts)")
	axis(1, at = c(1, which(d$Date=="2/2/2007")[1], nrow(d)), 
		labels=c("Thu", "Fri", "Sat"), tick=T)
	
}