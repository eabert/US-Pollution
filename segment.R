pollution2 <- data.table(read.csv("~/Data Analytics/Hack OHIO - US Pollution/pollution_data_2000_2016_wllz.csv"), header = TRUE)
pollution <- data.table(readRDS("~/pollution2.rds"))

setkey(pollution2, Date.Number)
pollution.NO2Mean <- pollution2[, mean(NO2.Mean), by=Date.Number]
pollution.NO2Mean$Date.Number <- as.integer(pollution.NO2Mean$Date.Number/365)
setkey(pollution.NO2Mean, Date.Number)
pollution.NO2Mean <- pollution.NO2Mean[, mean(V1), by=Date.Number]
names(pollution.NO2Mean)[2] <- "NO2.Mean"

setkey(pollution2, Date.Number)
pollution.NO2AQI <- pollution2[, mean(NO2.AQI), by=Date.Number]
pollution.NO2AQI$Date.Number <- as.integer(pollution.NO2AQI$Date.Number/365)
setkey(pollution.NO2AQI, Date.Number)
pollution.NO2AQI <- pollution.NO2AQI[, mean(V1), by=Date.Number]
names(pollution.NO2AQI)[2] <- "NO2.AQI"

setkey(pollution2, Date.Number)
pollution.O3Mean <- pollution2[, mean(O3.Mean), by=Date.Number]
pollution.O3Mean$Date.Number <- as.integer(pollution.O3Mean$Date.Number/365)
setkey(pollution.O3Mean, Date.Number)
pollution.O3Mean <- pollution.O3Mean[, mean(V1), by=Date.Number]
names(pollution.O3Mean)[2] <- "O3.Mean"

setkey(pollution2, Date.Number)
pollution.O3AQI <- pollution2[, mean(O3.AQI), by=Date.Number]
pollution.O3AQI$Date.Number <- as.integer(pollution.O3AQI$Date.Number/365)
setkey(pollution.O3AQI, Date.Number)
pollution.O3AQI <- pollution.O3AQI[, mean(V1), by=Date.Number]
names(pollution.O3AQI)[2] <- "O3.AQI"

setkey(pollution2, Date.Number)
pollution.SO2Mean <- pollution2[, mean(SO2.Mean), by=Date.Number]
pollution.SO2Mean$Date.Number <- as.integer(pollution.SO2Mean$Date.Number/365)
setkey(pollution.SO2Mean, Date.Number)
pollution.SO2Mean <- pollution.SO2Mean[, mean(V1), by=Date.Number]
names(pollution.SO2Mean)[2] <- "SO2.Mean"

setkey(pollution2, Date.Number)
pollution.SO2AQI <- pollution2[, mean(SO2.AQI), by=Date.Number]
pollution.SO2AQI$Date.Number <- as.integer(pollution.SO2AQI$Date.Number/365)
setkey(pollution.SO2AQI, Date.Number)
pollution.SO2AQI <- pollution.SO2AQI[, mean(V1), by=Date.Number]
names(pollution.SO2AQI)[2] <- "SO2.AQI"

setkey(pollution2, Date.Number)
pollution.COMean <- pollution2[, mean(CO.Mean), by=Date.Number]
pollution.COMean$Date.Number <- as.integer(pollution.COMean$Date.Number/365)
setkey(pollution.COMean, Date.Number)
pollution.COMean <- pollution.COMean[, mean(V1), by=Date.Number]
names(pollution.COMean)[2] <- "CO.Mean"

setkey(pollution2, Date.Number)
pollution.COAQI <- pollution2[, mean(!is.na(CO.AQI)), by=Date.Number]
pollution.COAQI$Date.Number <- as.integer(pollution.COAQI$Date.Number/365)
setkey(pollution.COAQI, Date.Number)
pollution.COAQI <- pollution.COAQI[, mean(V1), by=Date.Number]
names(pollution.COAQI)[2] <- "CO.AQI"

setkey(pollution2, Date.Number)
pollution.Latitude <- pollution2[, Latitude, by=Date.Number]
pollution.Latitude$Date.Number <- as.integer(pollution.Latitude$Date.Number/365)
setkey(pollution.Latitude, Date.Number)
pollution.Latitude <- pollution.Latitude[, Latitude, by=Date.Number]
names(pollution.Latitude)[2] <- "Latitude"

setkey(pollution2, Date.Number)
pollution.Longitude <- pollution2[, Longitude, by=Date.Number]
pollution.Longitude$Date.Number <- as.integer(pollution.Longitude$Date.Number/365)
setkey(pollution.Longitude, Date.Number)
pollution.Longitude <- pollution.Longitude[, Longitude, by=Date.Number]
names(pollution.Longitude)[2] <- "Longitude"

setkey(pollution2, Date.Number)
pollution.Zipcode <- pollution2[, Zipcode, by=Date.Number]
pollution.Zipcode$Date.Number <- as.integer(pollution.Zipcode$Date.Number/365)
setkey(pollution.Zipcode, Date.Number)
pollution.Zipcode <- pollution.Zipcode[, Zipcode, by=Date.Number]
names(pollution.Zipcode)[2] <- "Zipcode"

pollution$Date.Number <- as.integer(pollution$Date.Number/365)

for(j in 1:nrow(pollution.NO2Mean)){
  pollution$NO2.Mean[pollution$Date.Number == pollution.NO2Mean$Date.Number[j]] <- pollution.NO2Mean$NO2.Mean[j]
  pollution$NO2.AQI[pollution$Date.Number == pollution.NO2AQI$Date.Number[j]] <- pollution.NO2AQI$NO2.AQI[j]
  pollution$O3.Mean[pollution$Date.Number == pollution.O3Mean$Date.Number[j]] <- pollution.O3Mean$O3.Mean[j]
  pollution$O3.AQI[pollution$Date.Number == pollution.O3AQI$Date.Number[j]] <- pollution.O3AQI$O3.AQI[j]
  pollution$SO2.Mean[pollution$Date.Number == pollution.SO2Mean$Date.Number[j]] <- pollution.SO2Mean$SO2.Mean[j]
  pollution$SO2.AQI[pollution$Date.Number == pollution.SO2AQI$Date.Number[j]] <- pollution.SO2AQI$SO2.AQI[j]
  pollution$CO.Mean[pollution$Date.Number == pollution.COMean$Date.Number[j]] <- pollution.COMean$CO.Mean[j]
  pollution$CO.AQI[pollution$Date.Number == pollution.COAQI$Date.Number[j]] <- pollution.COAQI$CO.AQI[j]
  pollution$Latitude[pollution$Date.Number == pollution.Latitude$Date.Number[j]] <- pollution.Latitude$Latitude[j]
  pollution$Longitude[pollution$Date.Number == pollution.Longitude$Date.Number[j]] <- pollution.Longitude$Longitude[j]
  pollution$Zipcode[pollution$Date.Number == pollution.Zipcode$Date.Number[j]] <- pollution.Zipcode$Zipcode[j]
}

pollution.Test <- pollution
saveRDS(pollution.Test, "pollutionFinal.rds")