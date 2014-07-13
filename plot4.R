
#Read in data for graphs
GraphTable <- read.csv("~/Coursera/ExData_Plotting1/PlotData.csv", na.strings="?", header=T, stringsAsFactors=FALSE)  # Reads subset csv GraphTable file

GraphTable$DateTime <-as.Date(GraphTable$DateTime)

# Parameters for 2x2 graph display
par(mfrow=c(2,2))

# First plot
plot(GraphTable$DateTime, GraphTable$Global_active_power, type="l",
     ylab="Global Active Power (kilowatts)",
     xlab="",
     col="black")

# Second plot
plot(GraphTable$DateTime, GraphTable$Voltage, type="l",
     ylab="Voltage",
     xlab="datetime",
     col="black")

# Third plot
plot(GraphTable$DateTime, GraphTable$Sub_metering_1, type="l",
     ylab="Energy sub metering",
     xlab="",
     col="black")
lines(GraphTable$DateTime, GraphTable$Sub_metering_2,col="red")
lines(GraphTable$DateTime, GraphTable$Sub_metering_3,col="blue")
legend('topright', lty=1,
       c("Sub metering 1", "Sub metering 2", "Sub metering 3"),
       col=c("black", "red", "blue"))

# Fourth Plot
plot(GraphTable$DateTime, GraphTable$Global_reactive_power, type="l",
     ylab="Global Rective Power",
     xlab="datetime",
     col="black")

dev.copy(png, filename="plot4.png" ,width=480, height=480 )
dev.off()

