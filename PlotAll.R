source('DataPrep.R')
source('plot1.R')
source('plot2.R')
source('plot3.R')
source('plot4.R')

data <- get_data()

write_all <- function() {
    write_plot1()
    write_plot2()
    write_plot3()
    write_plot4()
}