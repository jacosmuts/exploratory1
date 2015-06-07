library(lubridate)

# create class myDate to convert Date to Date while reading data
read_data <- function(file='household_power_consumption.txt') {
    setClass('myDate')
    setAs("character", "myDate", function(from) as.Date(from, format="%d/%m/%Y"))
    data <- read.table("household_power_consumption.txt", 
                       header=TRUE, sep=";", 
                       stringsAsFactors=FALSE, 
                       na.strings="?", 
                       colClasses=c('myDate',
                                    'character',
                                    'numeric',
                                    'numeric',
                                    'numeric',
                                    'numeric',
                                    'numeric',
                                    'numeric',
                                    'numeric'
                       )
    )
    data <- subset(data, data$Date %in% c(as.Date('2007-02-01 ', format="%Y-%m-%d"),
                                          as.Date('2007-02-02 ', format="%Y-%m-%d")
    )
    )
    
    data$DateTime <- ymd(data$Date) + hms(data$Time)
    
    data
}


