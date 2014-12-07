#This is the second plot of the first assignment of the Data Scientist Toolkit Exploratory Data Analysis

#Download file
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip","c:/r/assign1.zip")

#Unzip the file
unzip("c:/r/assign1.zip")

#set a name
hpc=("c:/r/household_power_consumption.txt")

#make data table
assign=read.table(hpc,header=TRUE,sep=";",na.strings="?",skip=66637,nrows=2878)
names(assign) <-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

#assign2=read.table(hpc,header=TRUE,sep=";",na.strings="?",skip=68076,nrows=1438)
#names(assign2) <-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
#assign<-rbind(assign1,assign2)

#change to date format and strip date time
assign$datetime <- paste(assign$Date, assign$Time)




#strip date time
assign$posixDate <- strptime(assign$datetime, "%d/%m/%Y %H:%M:%S")

#select only the rows needed
#mydata<-subset(assign,Date==c("2/1/2007","2/2/2007"))


#Plot 2
plot(mydata$posixDate,mydata$Global_active_power,xlab="",type="l",ylab="Global Active Power(kilowatts)")

