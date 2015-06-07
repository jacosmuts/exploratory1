source('DataPrep.R')

get_data <- function() {
    data <- read_data()
    data
}

plot_voltage <- function() {
    plot(data$DateTime, 
         data$Voltage, 
         type="l", 
         ylab="Voltage", 
         xlab="datetime"
    )
}


plot_reactive <- function(){
    plot(data$DateTime, 
         data$Global_reactive_power, 
         type="l",  
         xlab="datetime", 
         ylab="Global_reactive_power"
    )
}
plot4 <- function() {
    par(mfrow=c(2,2))
    plot2(ylabt="Global Active Power", set_par=FALSE)
    plot_voltage()
    plot3(set_par=FALSE, bty_def="n")
    plot_reactive()
}

write_plot4 <- function() {
    png(filename='plot4.png')
    plot4()
    dev.off()
}


