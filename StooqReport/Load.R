library(RCurl)


source('Functions.R')

stooqdata <- getStooqData("Wig20")

stooqdata$Date <-  as.Date(stooqdata$Date)

stooqdata <- stooqdata[stooqdata$Date > as.Date('2015-01-01'),]

stooqdata.Date.min <- min(stooqdata$Date)
stooqdata$Date.from.first <- stooqdata$Date - stooqdata.Date.min 

stooqdata$DayChange <-  stooqdata$Close -  stooqdata$Open 
stooqdata$DayChange.p <-  (stooqdata$Close -  stooqdata$Open) /  stooqdata$Open 
stooqdata$Range <-  stooqdata$High -  stooqdata$Low
stooqdata$Range.p <-  (stooqdata$High -  stooqdata$Low ) / stooqdata$Low 

stooqdata$Range.to.DayChange <-  stooqdata$Range / stooqdata$DayChange


stooqdata$Date.weekdays <- factor(weekdays(stooqdata$Date),  levels = c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday"))
stooqdata$Date.months <- factor(months(stooqdata$Date), , levels = c("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"))
quarters


stooqdata[stooqdata$Date.months >= "October",]


class(stooqdata$Date.as.Date)




wibor <- getStooqData.xts("PLOPLN3M")



xauusd <- getStooqData.xts("xauusd")
xuapln <- getStooqData.xts("xaupln")




