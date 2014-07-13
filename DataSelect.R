DataSelect <- function() {
        rm(list=ls())
        PowerConsumption <- read.csv("~/Coursera/ExData_Plotting1/household_power_consumption.txt", sep=";", na.strings=c("?"), header=T, colClasses=c("character","character",rep("numeric",5))  # Reads data and sets column classes
        PowerSubset <- PowerConsumption[(PowerConsumption$Date == "1/2/2007") | (PowerConsumption$Date == "2/2/2007"),]  # Selects and creates subset of data per course instructions
        PowerSubset$DateTime <- strptime(paste(PowerSubset$Date, PowerSubset$Time), "%d/%m/%Y %H:%M:%S")  # Creates additional date/time column to end of data set
        write.csv(PowerSubset, file = "~/Coursera/ExData_Plotting1/PlotData.csv", row.names=FALSE,sep=";")  # Writes subset of data to csv file for Plot formation
        
} 

