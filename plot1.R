plot1 <- function() {
        GraphTable <- read.csv("~/Coursera/ExData_Plotting1/PlotData.csv", na.strings="?")  # Reads subset csv data file
        hist(GraphTable$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")  # Creates histogram according to course example
        dev.copy(png, filename = "plot1.png", width = 480, height = 480, units = "px")  # Saves png on graphic device to file 
        dev.off()  # Clears graphic device for additional plots
}

plot1()

