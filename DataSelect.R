DataSelect <- function() {
        rm(list=ls())
        PowerConsumption <- read.csv("~/Coursera/ExData_Plotting1/household_power_consumption.txt", sep=";", na.strings="?")
        PowerSubset <- PowerConsumption[(PowerConsumption$Date == "1/2/2007") | (PowerConsumption$Date == "2/2/2007"),]
        SubsetData <- strptime(paste(PowerSubset$Date, Powersubset$Time), "%d/%m/%Y %H:%M:%S")
        write.csv(SubsetData, file = "PlotData.csv", row.names=FALSE)
        
        
} 

