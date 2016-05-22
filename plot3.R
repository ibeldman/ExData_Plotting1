##Load required data files
setwd("C:/Users/IBeldman/Documents/Learning/Personal Learning/Coursera/4. Exploratory Data Analysis/Week 1/ExData_Plotting1")

householdFile <- "C:/Users/IBeldman/Documents/Learning/Personal Learning/Coursera/4. Exploratory Data Analysis/Week 1/ExData_Plotting1/Data/household_power_consumption.txt"


plotData <- read.table(householdFile, header=T, sep=";", na.strings="?")

## Set the time variables of the data set.
finalData <- plotData[plotData$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <-strptime(paste(finalData$Date, finalData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
finalData <- cbind(SetTime, finalData)

## Generating figure of plot 3
columnlines <- c("black", "red", "blue")
labels <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
plot(finalData$SetTime, finalData$Sub_metering_1, type="l", col=columnlines[1], xlab="", ylab="Energy sub metering")
lines(finalData$SetTime, finalData$Sub_metering_2, col=columnlines[2])
lines(finalData$SetTime, finalData$Sub_metering_3, col=columnlines[3])
legend("topright", legend=labels, col=columnlines, lty="solid")
