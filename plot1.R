plotOne <- function(){
  data <- read.table('~/ExData_Plotting1/household_power_consumption.txt', sep=';',header=TRUE, na.strings=c("?"))
  print(nrow(data))
  data$Date <- as.Date( as.character(data$Date), "%d/%m/%Y")
  print(data[1,1] > as.Date("2006-01-01"))
  data3 <- subset(data, data$Date >= as.Date("2007-01-01") & data$Date <= as.Date("2007-01-02"))
  print((data3[,3]))
  #   data2$Golbal_active_power = toString(data2$Golbal_active_power)
#   data3 = subset(data2, data2$Golbal_active_power != '?')
  print(max(data3$Golbal_active_power))
  print(data3$Golbal_active_power)
  hist(as.numeric(data3$Golbal_active_power), breaks=12,xlim=c(0,6))
  rm(data)
}