#R code to produce plot1.png
plotData<-read.table("household_power_consumption.txt",header=TRUE,sep = ";")
plotData$Date<-as.Date(plotData$Date,"%d/%m/%Y")
subplotData<-subset(plotData,Date >="2007-02-01"& Date <="2007-02-02")
subplotData$Global_active_power <-as.numeric(as.character(subplotData$Global_active_power))
subplotData$Global_reactive_power <-as.numeric(as.character(subplotData$Global_reactive_power))
png(file = "plot1.png",width = 480, height = 480, units = "px")
with(subplotData,hist(Global_active_power,col="red",main="Gobal Active Power",xlab = "Global Active Power(kilowatts)"))
dev.off()