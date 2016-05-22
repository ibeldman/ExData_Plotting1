##Load required data files
setwd("C:/Users/IBeldman/Documents/Learning/Personal Learning/Coursera/4. Exploratory Data Analysis/Week 1/ExData_Plotting1")

householdFile <- "C:/Users/IBeldman/Documents/Learning/Personal Learning/Coursera/4. Exploratory Data Analysis/Week 1/ExData_Plotting1/Data/household_power_consumption.txt"


plotData <- read.table(householdFile, header=T, sep=";", na.strings="?")

## Set the time variables of the data set.
finalData <- plotData[plotData$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <-strptime(paste(finalData$Date, finalData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
finalData <- cbind(SetTime, finalData)

## Generating figure of plot 2
plot(finalData$SetTime, finalData$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power (kilowatts)")