library(sqldf)
plot1 <- function(){

	d <- read.csv.sql("data.txt", 
		sql = "select * from file where Date='1/2/2007' OR Date='2/2/2007'", 
		header = T, sep=";")	
	
	png("plot1.png", bg ="transparent")
	
	hist(d$Global_active_power, xlab="Global Active Power (kilowatts)", 
		col="red", main="Global Active Power")
	
	dev.off()
	
}