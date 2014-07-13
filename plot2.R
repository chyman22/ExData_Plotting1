plot2 <- function() {

GraphTable <- read.csv("~/Coursera/ExData_Plotting1/PlotData.csv", na.strings="?", header=T, stringsAsFactors=FALSE)  # Reads subset csv data file

GraphTable$DateTime <-as.Date(GraphTable$DateTime)

xmin <- min(GraphTable$DateTime)
xmax <- max(GraphTable$DateTime)

# Creates the line chart according to the example provided

plot(GraphTable$DateTime, GraphTable$Global_active_power, type="l",
     ylab="Global Active Power (kilowatts)",
     xlab="",
     col="black", xlim=c(as.POSIXct(xmin), as.POSIXct(xmax)))

axis(1, at=1:3, lab=c("Thursday", "Friday", "Saturday"))

# Copy png from graphics device to file

dev.copy(png, filename="plot2.png" , width=480, height=480 )
dev.off()

}

plot2()

