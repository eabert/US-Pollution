pollution.manip <- read.csv("~/pollution_us_2000_2016_5.csv", header = TRUE)

cities.df2000 <- data.frame(subset(pollution.manip[pollution.manip$Year == 2000, ]))
cities.uniqueIn2000 <- cities.df2000[!duplicated(cities.df2000$City), ]$City
for(i in 1:length(cities.uniqueIn2000)){
  NO2Mean.2000 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2000[i] & pollution.manip$Year == 2000), ]$NO2.Mean)
  NO2AQI.2000 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2000[i] & pollution.manip$Year == 2000), ]$NO2.AQI)
  O3Mean.2000 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2000[i] & pollution.manip$Year == 2000), ]$O3.Mean)
  O3AQI.2000 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2000[i] & pollution.manip$Year == 2000), ]$O3.AQI)
  SO2Mean.2000 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2000[i] & pollution.manip$Year == 2000), ]$SO2.Mean)
  SO2AQI.2000 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2000[i] & pollution.manip$Year == 2000), ]$SO2.AQI)
  COMean.2000 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2000[i] & pollution.manip$Year == 2000), ]$CO.Mean)
  COAQI.2000 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2000[i] & pollution.manip$Year == 2000), ]$CO.AQI)
  Lat.2000 <- as.double(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2000[i] & pollution.manip$Year == 2000), ]$Latitude))
  Long.2000 <- as.double(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2000[i] & pollution.manip$Year == 2000), ]$Longitude))
  City.2000 <- as.character(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2000[i] & pollution.manip$Year == 2000), ]$City))
  State.2000 <- as.character(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2000[i] & pollution.manip$Year == 2000), ]$State))
  
  cF.new <- data.frame(NO2Mean.2000, NO2AQI.2000, O3Mean.2000, O3AQI.2000, SO2Mean.2000, SO2AQI.2000, COMean.2000, COAQI.2000, Lat.2000, Long.2000, City.2000, State.2000)
  
  if(i == 1){
    pollution.bCIn2000 <- cF.new
  } else {
    pollution.bCIn2000 <- rbind(pollution.bCIn2000, cF.new)
  }

}

saveRDS(pollution.bCIn2000, "~/US-Pollution-master/YearScripts/pollution.bCIn2000.rds")



cities.df2001 <- data.frame(subset(pollution.manip[pollution.manip$Year == 2001, ]))
cities.uniqueIn2001 <- cities.df2001[!duplicated(cities.df2001$City), ]$City
for(i in 1:length(cities.uniqueIn2001)){
  NO2Mean.2001 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2001[i] & pollution.manip$Year == 2001), ]$NO2.Mean)
  NO2AQI.2001 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2001[i] & pollution.manip$Year == 2001), ]$NO2.AQI)
  O3Mean.2001 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2001[i] & pollution.manip$Year == 2001), ]$O3.Mean)
  O3AQI.2001 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2001[i] & pollution.manip$Year == 2001), ]$O3.AQI)
  SO2Mean.2001 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2001[i] & pollution.manip$Year == 2001), ]$SO2.Mean)
  SO2AQI.2001 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2001[i] & pollution.manip$Year == 2001), ]$SO2.AQI)
  COMean.2001 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2001[i] & pollution.manip$Year == 2001), ]$CO.Mean)
  COAQI.2001 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2001[i] & pollution.manip$Year == 2001), ]$CO.AQI)
  Lat.2001 <- as.double(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2001[i] & pollution.manip$Year == 2001), ]$Latitude))
  Long.2001 <- as.double(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2001[i] & pollution.manip$Year == 2001), ]$Longitude))
  City.2001 <- as.character(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2000[i] & pollution.manip$Year == 2001), ]$City))
  State.2001 <- as.character(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2000[i] & pollution.manip$Year == 2001), ]$State))
  
  cF.new <- data.frame(NO2Mean.2001, NO2AQI.2001, O3Mean.2001, O3AQI.2001, SO2Mean.2001, SO2AQI.2001, COMean.2001, COAQI.2001, Lat.2001, Long.2001, City.2001, State.2001)
  
  if(i == 1){
    pollution.bCIn2001 <- cF.new
  } else {
    pollution.bCIn2001 <- rbind(pollution.bCIn2001, cF.new)
  }
  
}

saveRDS(pollution.bCIn2001, "~/US-Pollution-master/YearScripts/pollution.bCIn2001.rds")


cities.df2002 <- data.frame(subset(pollution.manip[pollution.manip$Year == 2002, ]))
cities.uniqueIn2002 <- cities.df2002[!duplicated(cities.df2002$City), ]$City
for(i in 1:length(cities.uniqueIn2002)){
  NO2Mean.2002 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2002[i] & pollution.manip$Year == 2002), ]$NO2.Mean)
  NO2AQI.2002 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2002[i] & pollution.manip$Year == 2002), ]$NO2.AQI)
  O3Mean.2002 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2002[i] & pollution.manip$Year == 2002), ]$O3.Mean)
  O3AQI.2002 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2002[i] & pollution.manip$Year == 2002), ]$O3.AQI)
  SO2Mean.2002 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2002[i] & pollution.manip$Year == 2002), ]$SO2.Mean)
  SO2AQI.2002 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2002[i] & pollution.manip$Year == 2002), ]$SO2.AQI)
  COMean.2002 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2002[i] & pollution.manip$Year == 2002), ]$CO.Mean)
  COAQI.2002 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2002[i] & pollution.manip$Year == 2002), ]$CO.AQI)
  Lat.2002 <- as.double(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2002[i] & pollution.manip$Year == 2002), ]$Latitude))
  Long.2002 <- as.double(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2002[i] & pollution.manip$Year == 2002), ]$Longitude))
  City.2002 <- as.character(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2000[i] & pollution.manip$Year == 2002), ]$City))
  State.2002 <- as.character(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2000[i] & pollution.manip$Year == 2002), ]$State))
  
  cF.new <- data.frame(NO2Mean.2002, NO2AQI.2002, O3Mean.2002, O3AQI.2002, SO2Mean.2002, SO2AQI.2002, COMean.2002, COAQI.2002, Lat.2002, Long.2002, City.2002, State.2002)
  
  if(i == 1){
    pollution.bCIn2002 <- cF.new
  } else {
    pollution.bCIn2002 <- rbind(pollution.bCIn2002, cF.new)
  }
  
}

saveRDS(pollution.bCIn2002, "~/US-Pollution-master/YearScripts/pollution.bCIn2002.rds")


cities.df2003 <- data.frame(subset(pollution.manip[pollution.manip$Year == 2003, ]))
cities.uniqueIn2003 <- cities.df2003[!duplicated(cities.df2003$City), ]$City
for(i in 1:length(cities.uniqueIn2003)){
  NO2Mean.2003 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2003[i] & pollution.manip$Year == 2003), ]$NO2.Mean)
  NO2AQI.2003 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2003[i] & pollution.manip$Year == 2003), ]$NO2.AQI)
  O3Mean.2003 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2003[i] & pollution.manip$Year == 2003), ]$O3.Mean)
  O3AQI.2003 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2003[i] & pollution.manip$Year == 2003), ]$O3.AQI)
  SO2Mean.2003 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2003[i] & pollution.manip$Year == 2003), ]$SO2.Mean)
  SO2AQI.2003 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2003[i] & pollution.manip$Year == 2003), ]$SO2.AQI)
  COMean.2003 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2003[i] & pollution.manip$Year == 2003), ]$CO.Mean)
  COAQI.2003 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2003[i] & pollution.manip$Year == 2003), ]$CO.AQI)
  Lat.2003 <- as.double(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2003[i] & pollution.manip$Year == 2003), ]$Latitude))
  Long.2003 <- as.double(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2003[i] & pollution.manip$Year == 2003), ]$Longitude))
  City.2003 <- as.character(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2000[i] & pollution.manip$Year == 2003), ]$City))
  State.2003 <- as.character(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2000[i] & pollution.manip$Year == 2003), ]$State))
  
  cF.new <- data.frame(NO2Mean.2003, NO2AQI.2003, O3Mean.2003, O3AQI.2003, SO2Mean.2003, SO2AQI.2003, COMean.2003, COAQI.2003, Lat.2003, Long.2003, City.2003, State.2003)
  
  if(i == 1){
    pollution.bCIn2003 <- cF.new
  } else {
    pollution.bCIn2003 <- rbind(pollution.bCIn2003, cF.new)
  }
  
}

saveRDS(pollution.bCIn2003, "~/US-Pollution-master/YearScripts/pollution.bCIn2003.rds")


cities.df2004 <- data.frame(subset(pollution.manip[pollution.manip$Year == 2004, ]))
cities.uniqueIn2004 <- cities.df2004[!duplicated(cities.df2004$City), ]$City
for(i in 1:length(cities.uniqueIn2004)){
  NO2Mean.2004 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2004[i] & pollution.manip$Year == 2004), ]$NO2.Mean)
  NO2AQI.2004 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2004[i] & pollution.manip$Year == 2004), ]$NO2.AQI)
  O3Mean.2004 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2004[i] & pollution.manip$Year == 2004), ]$O3.Mean)
  O3AQI.2004 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2004[i] & pollution.manip$Year == 2004), ]$O3.AQI)
  SO2Mean.2004 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2004[i] & pollution.manip$Year == 2004), ]$SO2.Mean)
  SO2AQI.2004 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2004[i] & pollution.manip$Year == 2004), ]$SO2.AQI)
  COMean.2004 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2004[i] & pollution.manip$Year == 2004), ]$CO.Mean)
  COAQI.2004 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2004[i] & pollution.manip$Year == 2004), ]$CO.AQI)
  Lat.2004 <- as.double(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2004[i] & pollution.manip$Year == 2004), ]$Latitude))
  Long.2004 <- as.double(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2004[i] & pollution.manip$Year == 2004), ]$Longitude))
  City.2004 <- as.character(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2000[i] & pollution.manip$Year == 2004), ]$City))
  State.2004 <- as.character(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2000[i] & pollution.manip$Year == 2004), ]$State))
  
  cF.new <- data.frame(NO2Mean.2004, NO2AQI.2004, O3Mean.2004, O3AQI.2004, SO2Mean.2004, SO2AQI.2004, COMean.2004, COAQI.2004, Lat.2004, Long.2004, City.2004, State.2004)
  
  if(i == 1){
    pollution.bCIn2004 <- cF.new
  } else {
    pollution.bCIn2004 <- rbind(pollution.bCIn2004, cF.new)
  }
  
}

saveRDS(pollution.bCIn2004, "~/US-Pollution-master/YearScripts/pollution.bCIn2004.rds")


cities.df2005 <- data.frame(subset(pollution.manip[pollution.manip$Year == 2005, ]))
cities.uniqueIn2005 <- cities.df2005[!duplicated(cities.df2005$City), ]$City
for(i in 1:length(cities.uniqueIn2005)){
  NO2Mean.2005 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2005[i] & pollution.manip$Year == 2005), ]$NO2.Mean)
  NO2AQI.2005 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2005[i] & pollution.manip$Year == 2005), ]$NO2.AQI)
  O3Mean.2005 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2005[i] & pollution.manip$Year == 2005), ]$O3.Mean)
  O3AQI.2005 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2005[i] & pollution.manip$Year == 2005), ]$O3.AQI)
  SO2Mean.2005 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2005[i] & pollution.manip$Year == 2005), ]$SO2.Mean)
  SO2AQI.2005 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2005[i] & pollution.manip$Year == 2005), ]$SO2.AQI)
  COMean.2005 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2005[i] & pollution.manip$Year == 2005), ]$CO.Mean)
  COAQI.2005 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2005[i] & pollution.manip$Year == 2005), ]$CO.AQI)
  Lat.2005 <- as.double(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2005[i] & pollution.manip$Year == 2005), ]$Latitude))
  Long.2005 <- as.double(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2005[i] & pollution.manip$Year == 2005), ]$Longitude))
  City.2005 <- as.character(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2000[i] & pollution.manip$Year == 2005), ]$City))
  State.2005 <- as.character(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2000[i] & pollution.manip$Year == 2005), ]$State))
  
  cF.new <- data.frame(NO2Mean.2005, NO2AQI.2005, O3Mean.2005, O3AQI.2005, SO2Mean.2005, SO2AQI.2005, COMean.2005, COAQI.2005, Lat.2005, Long.2005, City.2005, State.2005)
  
  if(i == 1){
    pollution.bCIn2005 <- cF.new
  } else {
    pollution.bCIn2005 <- rbind(pollution.bCIn2005, cF.new)
  }
  
}

saveRDS(pollution.bCIn2005, "~/US-Pollution-master/YearScripts/pollution.bCIn2005.rds")


cities.df2006 <- data.frame(subset(pollution.manip[pollution.manip$Year == 2006, ]))
cities.uniqueIn2006 <- cities.df2006[!duplicated(cities.df2006$City), ]$City
for(i in 1:length(cities.uniqueIn2006)){
  NO2Mean.2006 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2006[i] & pollution.manip$Year == 2006), ]$NO2.Mean)
  NO2AQI.2006 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2006[i] & pollution.manip$Year == 2006), ]$NO2.AQI)
  O3Mean.2006 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2006[i] & pollution.manip$Year == 2006), ]$O3.Mean)
  O3AQI.2006 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2006[i] & pollution.manip$Year == 2006), ]$O3.AQI)
  SO2Mean.2006 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2006[i] & pollution.manip$Year == 2006), ]$SO2.Mean)
  SO2AQI.2006 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2006[i] & pollution.manip$Year == 2006), ]$SO2.AQI)
  COMean.2006 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2006[i] & pollution.manip$Year == 2006), ]$CO.Mean)
  COAQI.2006 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2006[i] & pollution.manip$Year == 2006), ]$CO.AQI)
  Lat.2006 <- as.double(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2006[i] & pollution.manip$Year == 2006), ]$Latitude))
  Long.2006 <- as.double(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2006[i] & pollution.manip$Year == 2006), ]$Longitude))
  City.2006 <- as.character(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2000[i] & pollution.manip$Year == 2006), ]$City))
  State.2006 <- as.character(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2000[i] & pollution.manip$Year == 2006), ]$State))
  
  cF.new <- data.frame(NO2Mean.2006, NO2AQI.2006, O3Mean.2006, O3AQI.2006, SO2Mean.2006, SO2AQI.2006, COMean.2006, COAQI.2006, Lat.2006, Long.2006, City.2006, State.2006)
  
  if(i == 1){
    pollution.bCIn2006 <- cF.new
  } else {
    pollution.bCIn2006 <- rbind(pollution.bCIn2006, cF.new)
  }
  
}

saveRDS(pollution.bCIn2006, "~/US-Pollution-master/YearScripts/pollution.bCIn2006.rds")


cities.df2007 <- data.frame(subset(pollution.manip[pollution.manip$Year == 2007, ]))
cities.uniqueIn2007 <- cities.df2007[!duplicated(cities.df2007$City), ]$City
for(i in 1:length(cities.uniqueIn2007)){
  NO2Mean.2007 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2007[i] & pollution.manip$Year == 2007), ]$NO2.Mean)
  NO2AQI.2007 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2007[i] & pollution.manip$Year == 2007), ]$NO2.AQI)
  O3Mean.2007 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2007[i] & pollution.manip$Year == 2007), ]$O3.Mean)
  O3AQI.2007 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2007[i] & pollution.manip$Year == 2007), ]$O3.AQI)
  SO2Mean.2007 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2007[i] & pollution.manip$Year == 2007), ]$SO2.Mean)
  SO2AQI.2007 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2007[i] & pollution.manip$Year == 2007), ]$SO2.AQI)
  COMean.2007 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2007[i] & pollution.manip$Year == 2007), ]$CO.Mean)
  COAQI.2007 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2007[i] & pollution.manip$Year == 2007), ]$CO.AQI)
  Lat.2007 <- as.double(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2007[i] & pollution.manip$Year == 2007), ]$Latitude))
  Long.2007 <- as.double(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2007[i] & pollution.manip$Year == 2007), ]$Longitude))
  City.2007 <- as.character(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2000[i] & pollution.manip$Year == 2007), ]$City))
  State.2007 <- as.character(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2000[i] & pollution.manip$Year == 2007), ]$State))
  
  cF.new <- data.frame(NO2Mean.2007, NO2AQI.2007, O3Mean.2007, O3AQI.2007, SO2Mean.2007, SO2AQI.2007, COMean.2007, COAQI.2007, Lat.2007, Long.2007, City.2007, State.2007)
  
  if(i == 1){
    pollution.bCIn2007 <- cF.new
  } else {
    pollution.bCIn2007 <- rbind(pollution.bCIn2007, cF.new)
  }
  
}

saveRDS(pollution.bCIn2007, "~/US-Pollution-master/YearScripts/pollution.bCIn2007.rds")


cities.df2008 <- data.frame(subset(pollution.manip[pollution.manip$Year == 2008, ]))
cities.uniqueIn2008 <- cities.df2008[!duplicated(cities.df2008$City), ]$City
for(i in 1:length(cities.uniqueIn2008)){
  NO2Mean.2008 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2008[i] & pollution.manip$Year == 2008), ]$NO2.Mean)
  NO2AQI.2008 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2008[i] & pollution.manip$Year == 2008), ]$NO2.AQI)
  O3Mean.2008 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2008[i] & pollution.manip$Year == 2008), ]$O3.Mean)
  O3AQI.2008 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2008[i] & pollution.manip$Year == 2008), ]$O3.AQI)
  SO2Mean.2008 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2008[i] & pollution.manip$Year == 2008), ]$SO2.Mean)
  SO2AQI.2008 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2008[i] & pollution.manip$Year == 2008), ]$SO2.AQI)
  COMean.2008 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2008[i] & pollution.manip$Year == 2008), ]$CO.Mean)
  COAQI.2008 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2008[i] & pollution.manip$Year == 2008), ]$CO.AQI)
  Lat.2008 <- as.double(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2008[i] & pollution.manip$Year == 2008), ]$Latitude))
  Long.2008 <- as.double(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2008[i] & pollution.manip$Year == 2008), ]$Longitude))
  City.2008 <- as.character(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2000[i] & pollution.manip$Year == 2008), ]$City))
  State.2008 <- as.character(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2000[i] & pollution.manip$Year == 2008), ]$State))
  
  cF.new <- data.frame(NO2Mean.2008, NO2AQI.2008, O3Mean.2008, O3AQI.2008, SO2Mean.2008, SO2AQI.2008, COMean.2008, COAQI.2008, Lat.2008, Long.2008, City.2008, State.2008)
  
  if(i == 1){
    pollution.bCIn2008 <- cF.new
  } else {
    pollution.bCIn2008 <- rbind(pollution.bCIn2008, cF.new)
  }
  
}

saveRDS(pollution.bCIn2008, "~/US-Pollution-master/YearScripts/pollution.bCIn2008.rds")


cities.df2009 <- data.frame(subset(pollution.manip[pollution.manip$Year == 2009, ]))
cities.uniqueIn2009 <- cities.df2009[!duplicated(cities.df2009$City), ]$City
for(i in 1:length(cities.uniqueIn2009)){
  NO2Mean.2009 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2009[i] & pollution.manip$Year == 2009), ]$NO2.Mean)
  NO2AQI.2009 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2009[i] & pollution.manip$Year == 2009), ]$NO2.AQI)
  O3Mean.2009 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2009[i] & pollution.manip$Year == 2009), ]$O3.Mean)
  O3AQI.2009 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2009[i] & pollution.manip$Year == 2009), ]$O3.AQI)
  SO2Mean.2009 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2009[i] & pollution.manip$Year == 2009), ]$SO2.Mean)
  SO2AQI.2009 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2009[i] & pollution.manip$Year == 2009), ]$SO2.AQI)
  COMean.2009 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2009[i] & pollution.manip$Year == 2009), ]$CO.Mean)
  COAQI.2009 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2009[i] & pollution.manip$Year == 2009), ]$CO.AQI)
  Lat.2009 <- as.double(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2009[i] & pollution.manip$Year == 2009), ]$Latitude))
  Long.2009 <- as.double(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2009[i] & pollution.manip$Year == 2009), ]$Longitude))
  City.2009 <- as.character(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2000[i] & pollution.manip$Year == 2009), ]$City))
  State.2009 <- as.character(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2000[i] & pollution.manip$Year == 2009), ]$State))
  
  cF.new <- data.frame(NO2Mean.2009, NO2AQI.2009, O3Mean.2009, O3AQI.2009, SO2Mean.2009, SO2AQI.2009, COMean.2009, COAQI.2009, Lat.2009, Long.2009, City.2009, State.2009)
  
  if(i == 1){
    pollution.bCIn2009 <- cF.new
  } else {
    pollution.bCIn2009 <- rbind(pollution.bCIn2009, cF.new)
  }
  
}

saveRDS(pollution.bCIn2009, "~/US-Pollution-master/YearScripts/pollution.bCIn2009.rds")


cities.df2010 <- data.frame(subset(pollution.manip[pollution.manip$Year == 2010, ]))
cities.uniqueIn2010 <- cities.df2010[!duplicated(cities.df2010$City), ]$City
for(i in 1:length(cities.uniqueIn2010)){
  NO2Mean.2010 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2010[i] & pollution.manip$Year == 2010), ]$NO2.Mean)
  NO2AQI.2010 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2010[i] & pollution.manip$Year == 2010), ]$NO2.AQI)
  O3Mean.2010 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2010[i] & pollution.manip$Year == 2010), ]$O3.Mean)
  O3AQI.2010 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2010[i] & pollution.manip$Year == 2010), ]$O3.AQI)
  SO2Mean.2010 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2010[i] & pollution.manip$Year == 2010), ]$SO2.Mean)
  SO2AQI.2010 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2010[i] & pollution.manip$Year == 2010), ]$SO2.AQI)
  COMean.2010 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2010[i] & pollution.manip$Year == 2010), ]$CO.Mean)
  COAQI.2010 <- mean(pollution.manip[(pollution.manip$City == cities.uniqueIn2010[i] & pollution.manip$Year == 2010), ]$CO.AQI)
  Lat.2010 <- as.double(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2010[i] & pollution.manip$Year == 2010), ]$Latitude))
  Long.2010 <- as.double(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2010[i] & pollution.manip$Year == 2010), ]$Longitude))
  City.2010 <- as.character(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2000[i] & pollution.manip$Year == 2010), ]$City))
  State.2010 <- as.character(unique(pollution.manip[(pollution.manip$City == cities.uniqueIn2000[i] & pollution.manip$Year == 2010), ]$State))
  
  cF.new <- data.frame(NO2Mean.2010, NO2AQI.2010, O3Mean.2010, O3AQI.2010, SO2Mean.2010, SO2AQI.2010, COMean.2010, COAQI.2010, Lat.2010, Long.2010, City.2010, State.2010)
  
  if(i == 1){
    pollution.bCIn2010 <- cF.new
  } else {
    pollution.bCIn2010 <- rbind(pollution.bCIn2010, cF.new)
  }
  
}

saveRDS(pollution.bCIn2010, "~/US-Pollution-master/YearScripts/pollution.bCIn2010.rds")