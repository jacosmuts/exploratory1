# Code book
This assignment uses data from the [UC Irvine Machine Learning Repository](http://archive.ics.uci.edu/ml/). In particular, I will be using the “Individual household electric power consumption Data Set” available on the course web site: [Electric power consumption](https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip).

The zip file contains a text file called household_power_consumption.txt containing csv data with the following fields:

1. **Date**: Date in format dd/mm/yyyy
1. **Time**: time in format hh:mm:ss
1. **Global_active_power**: household global minute-averaged active power (in kilowatt)
1. **Global_reactive_power**: household global minute-averaged reactive power (in kilowatt)
1. **Voltage**: minute-averaged voltage (in volt)
1. **Global_intensity**: household global minute-averaged current intensity (in ampere)
1. **Sub_metering_1**: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
1. **Sub_metering_2**: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
1. **Sub_metering_3**: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

All code will assume that the text file is in the current R working directory.

I will only be using data from the dates 2007-02-01 and 2007-02-02 as prescribed in the assignment. 

The process to prepare a tidy dataset is outlined in the [README.md](https://github.com/jacosmuts/exploratory1/blob/master/README.md) file as part of the DataPrep.R outline.

