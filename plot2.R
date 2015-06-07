source('DataPrep.R')

get_data <- function() {
    data <- read_data()
    data
}

plot_active2 <- function(ylabt="Global Active Power (kilowats)") {
    plot(data$DateTime, 
         data$Global_active_power, 
         type="l", 
         ylab=ylabt, 
         xlab="")
}

plot2 <- function(set_par=TRUE,
                  ylabt="Global Active Power (kilowats)") {
    if(set_par){
        par(mfrow=c(1,1))
    }    
    plot_active2(ylabt=ylabt)
}

write_plot2 <- function() {
    png(filename='plot2.png')
    plot2()
    dev.off()
}
