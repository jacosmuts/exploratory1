source('DataPrep.R')

get_data <- function() {
    data <- read_data()
    data
}

plot_active <- function() {
    hist(data$Global_active_power, 
         col="red", 
         xlab="Global Active Power (kilowats)", 
         main="Global Active Power"
         )
}

plot1 <- function(set_par=TRUE ) {
    if(set_par){
        par(mfrow=c(1,1))
    }
    plot_active()
}

write_plot1 <- function() {
    png(filename='plot1.png')
    plot1()
    dev.off()
}
