#EXAMPLE
library(dplyr)
library(data.table)

pollution.2000 <- readRDS("~/US-Pollution-master/YearScripts/pollution.bCIn2000.rds")
pollution.2001 <- readRDS("~/US-Pollution-master/YearScripts/pollution.bCIn2001.rds")
pollution.2002 <- readRDS("~/US-Pollution-master/YearScripts/pollution.bCIn2002.rds")
pollution.2003 <- readRDS("~/US-Pollution-master/YearScripts/pollution.bCIn2003.rds")
pollution.2004 <- readRDS("~/US-Pollution-master/YearScripts/pollution.bCIn2004.rds")
pollution.2005 <- readRDS("~/US-Pollution-master/YearScripts/pollution.bCIn2005.rds")
pollution.2006 <- readRDS("~/US-Pollution-master/YearScripts/pollution.bCIn2006.rds")
pollution.2007 <- readRDS("~/US-Pollution-master/YearScripts/pollution.bCIn2007.rds")
pollution.2008 <- readRDS("~/US-Pollution-master/YearScripts/pollution.bCIn2008.rds")
pollution.2009 <- readRDS("~/US-Pollution-master/YearScripts/pollution.bCIn2009.rds")
pollution.2010 <- readRDS("~/US-Pollution-master/YearScripts/pollution.bCIn2010.rds")

colnames(pollution.2000) <- c("NO2.Mean", "NO2.AQI", "O3.Mean", "O3.AQI", "SO2.Mean", "SO2.AQI", "CO.Mean", "CO.AQI", "Latitude", "Longitude", "City", "State")
colnames(pollution.2001) <- c("NO2.Mean", "NO2.AQI", "O3.Mean", "O3.AQI", "SO2.Mean", "SO2.AQI", "CO.Mean", "CO.AQI", "Latitude", "Longitude", "City", "State")
colnames(pollution.2002) <- c("NO2.Mean", "NO2.AQI", "O3.Mean", "O3.AQI", "SO2.Mean", "SO2.AQI", "CO.Mean", "CO.AQI", "Latitude", "Longitude", "City", "State")
colnames(pollution.2003) <- c("NO2.Mean", "NO2.AQI", "O3.Mean", "O3.AQI", "SO2.Mean", "SO2.AQI", "CO.Mean", "CO.AQI", "Latitude", "Longitude", "City", "State")
colnames(pollution.2004) <- c("NO2.Mean", "NO2.AQI", "O3.Mean", "O3.AQI", "SO2.Mean", "SO2.AQI", "CO.Mean", "CO.AQI", "Latitude", "Longitude", "City", "State")
colnames(pollution.2005) <- c("NO2.Mean", "NO2.AQI", "O3.Mean", "O3.AQI", "SO2.Mean", "SO2.AQI", "CO.Mean", "CO.AQI", "Latitude", "Longitude", "City", "State")
colnames(pollution.2006) <- c("NO2.Mean", "NO2.AQI", "O3.Mean", "O3.AQI", "SO2.Mean", "SO2.AQI", "CO.Mean", "CO.AQI", "Latitude", "Longitude", "City", "State")
colnames(pollution.2007) <- c("NO2.Mean", "NO2.AQI", "O3.Mean", "O3.AQI", "SO2.Mean", "SO2.AQI", "CO.Mean", "CO.AQI", "Latitude", "Longitude", "City", "State")
colnames(pollution.2008) <- c("NO2.Mean", "NO2.AQI", "O3.Mean", "O3.AQI", "SO2.Mean", "SO2.AQI", "CO.Mean", "CO.AQI", "Latitude", "Longitude", "City", "State")
colnames(pollution.2009) <- c("NO2.Mean", "NO2.AQI", "O3.Mean", "O3.AQI", "SO2.Mean", "SO2.AQI", "CO.Mean", "CO.AQI", "Latitude", "Longitude", "City", "State")
colnames(pollution.2010) <- c("NO2.Mean", "NO2.AQI", "O3.Mean", "O3.AQI", "SO2.Mean", "SO2.AQI", "CO.Mean", "CO.AQI", "Latitude", "Longitude", "City", "State")

cleantable.2000 <- pollution.2000 %>%
  select(
    
    
    NO2_Mean = NO2.Mean,
    NO2_AQI = NO2.AQI,
    O3_Mean = O3.Mean,
    O3_AQI = O3.AQI,
    SO2_Mean = SO2.Mean,
    SO2_AQI = SO2.AQI,
    CO_Mean = CO.Mean,
    CO_AQI = CO.AQI,
    
    Lat = Latitude,
    Long = Longitude,
    City = City,
    State = State
    
  )

cleantable.2001 <- pollution.2001 %>%
  select(
    
    
    NO2_Mean = NO2.Mean,
    NO2_AQI = NO2.AQI,
    O3_Mean = O3.Mean,
    O3_AQI = O3.AQI,
    SO2_Mean = SO2.Mean,
    SO2_AQI = SO2.AQI,
    CO_Mean = CO.Mean,
    CO_AQI = CO.AQI,
    
    Lat = Latitude,
    Long = Longitude,
    City = City,
    State = State
    
  )

cleantable.2002 <- pollution.2002 %>%
  select(
    
    
    NO2_Mean = NO2.Mean,
    NO2_AQI = NO2.AQI,
    O3_Mean = O3.Mean,
    O3_AQI = O3.AQI,
    SO2_Mean = SO2.Mean,
    SO2_AQI = SO2.AQI,
    CO_Mean = CO.Mean,
    CO_AQI = CO.AQI,
    
    Lat = Latitude,
    Long = Longitude,
    City = City,
    State = State
    
  )
cleantable.2003 <- pollution.2003 %>%
  select(
    
    
    NO2_Mean = NO2.Mean,
    NO2_AQI = NO2.AQI,
    O3_Mean = O3.Mean,
    O3_AQI = O3.AQI,
    SO2_Mean = SO2.Mean,
    SO2_AQI = SO2.AQI,
    CO_Mean = CO.Mean,
    CO_AQI = CO.AQI,
    
    Lat = Latitude,
    Long = Longitude,
    City = City,
    State = State
    
  )
cleantable.2004 <- pollution.2004 %>%
  select(
    
    
    NO2_Mean = NO2.Mean,
    NO2_AQI = NO2.AQI,
    O3_Mean = O3.Mean,
    O3_AQI = O3.AQI,
    SO2_Mean = SO2.Mean,
    SO2_AQI = SO2.AQI,
    CO_Mean = CO.Mean,
    CO_AQI = CO.AQI,
    
    Lat = Latitude,
    Long = Longitude,
    City = City,
    State = State
    
  )
cleantable.2005 <- pollution.2005 %>%
  select(
    
    
    NO2_Mean = NO2.Mean,
    NO2_AQI = NO2.AQI,
    O3_Mean = O3.Mean,
    O3_AQI = O3.AQI,
    SO2_Mean = SO2.Mean,
    SO2_AQI = SO2.AQI,
    CO_Mean = CO.Mean,
    CO_AQI = CO.AQI,
    
    Lat = Latitude,
    Long = Longitude,
    City = City,
    State = State
    
  )
cleantable.2006 <- pollution.2006 %>%
  select(
    
    
    NO2_Mean = NO2.Mean,
    NO2_AQI = NO2.AQI,
    O3_Mean = O3.Mean,
    O3_AQI = O3.AQI,
    SO2_Mean = SO2.Mean,
    SO2_AQI = SO2.AQI,
    CO_Mean = CO.Mean,
    CO_AQI = CO.AQI,
    
    Lat = Latitude,
    Long = Longitude,
    City = City,
    State = State
    
  )
cleantable.2007 <- pollution.2007 %>%
  select(
    
    
    NO2_Mean = NO2.Mean,
    NO2_AQI = NO2.AQI,
    O3_Mean = O3.Mean,
    O3_AQI = O3.AQI,
    SO2_Mean = SO2.Mean,
    SO2_AQI = SO2.AQI,
    CO_Mean = CO.Mean,
    CO_AQI = CO.AQI,
    
    Lat = Latitude,
    Long = Longitude,
    City = City,
    State = State
    
  )
cleantable.2008 <- pollution.2008 %>%
  select(
    
    
    NO2_Mean = NO2.Mean,
    NO2_AQI = NO2.AQI,
    O3_Mean = O3.Mean,
    O3_AQI = O3.AQI,
    SO2_Mean = SO2.Mean,
    SO2_AQI = SO2.AQI,
    CO_Mean = CO.Mean,
    CO_AQI = CO.AQI,
    
    Lat = Latitude,
    Long = Longitude,
    City = City,
    State = State
    
  )
cleantable.2009 <- pollution.2009 %>%
  select(
    
    
    NO2_Mean = NO2.Mean,
    NO2_AQI = NO2.AQI,
    O3_Mean = O3.Mean,
    O3_AQI = O3.AQI,
    SO2_Mean = SO2.Mean,
    SO2_AQI = SO2.AQI,
    CO_Mean = CO.Mean,
    CO_AQI = CO.AQI,
    
    Lat = Latitude,
    Long = Longitude,
    City = City,
    State = State
    
  )
cleantable.2010 <- pollution.2010 %>%
  select(
    
    
    NO2_Mean = NO2.Mean,
    NO2_AQI = NO2.AQI,
    O3_Mean = O3.Mean,
    O3_AQI = O3.AQI,
    SO2_Mean = SO2.Mean,
    SO2_AQI = SO2.AQI,
    CO_Mean = CO.Mean,
    CO_AQI = CO.AQI,
    
    Lat = Latitude,
    Long = Longitude,
    City = City,
    State = State
    
  )
