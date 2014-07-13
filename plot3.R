
GraphTable <- read.csv("~/Coursera/ExData_Plotting1/PlotData.csv", na.strings="?", header=T, stringsAsFactors=FALSE)  # Reads subset csv GraphTable file

GraphTable$DateTime <-as.Date(GraphTable$DateTime)

xmin <- min(GraphTable$DateTime)
xmax <- max(GraphTable$DateTime)

#Plots the graph according to the example
plot(GraphTable$DateTime, GraphTable$Sub_metering_1, type="l", xlim=c(as.POSIXct(xmin), as.POSIXct(xmax)), ylab="Energy sub metering", xlab="", col="black")

# Inserts the legend to the top right of the plot
legend('topright', lty=1, c("Sub metering 1", "Sub metering 2", "Sub metering 3"),
       col=c("black", "red", "blue"))

# Inserts Sub meter lines according to example
lines(GraphTable$DateTime, GraphTable$Sub_metering_2,col="red")
lines(GraphTable$DateTime, GraphTable$Sub_metering_3,col="blue")

dev.copy(png, filename="plot3.png" , width=480, height=480 )
dev.off()

