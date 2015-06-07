source('DataPrep.R')

get_data <- function() {
    data <- read_data()
    data
}

plot_sub <- function(bty_def="o") {
    plot(data$DateTime, 
         data$Sub_metering_1, 
         type="n", 
         xlab="", 
         ylab="Energy sub metering" 
    )
    
    lines(data$DateTime, data$Sub_metering_1)
    lines(data$DateTime, data$Sub_metering_2, col="red")
    lines(data$DateTime, data$Sub_metering_3, col="blue")
    
    legend("topright", 
           col=c("black", "red", "blue"), 
           legend=c("Sub_metering_1", 
                    "Sub_metering_2", 
                    "Sub_metering_3"), 
           lwd=1,
           bty=bty_def
           )
}

plot3 <- function(set_par=TRUE, bty_def="o") {
    if(set_par){
        par(mfrow=c(1,1))
    }
    plot_sub(bty_def=bty_def)
}

write_plot3 <- function() {
    png(filename='plot3.png')
    plot3()
    dev.off()
}

