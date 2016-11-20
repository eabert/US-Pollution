#EXAMPLE
library(dplyr)

source("segment.R");
pollution <- readRDS("~/Data Analytics/Hack OHIO - US Pollution/Pollution Shiny/pollutionFinal.rds")

cleantable <- pollution %>%
  select(
    City = City,
    State = State,
    NO2_Mean = NO2.Mean,
    NO2_AQI = NO2.AQI,
    O3_Mean = O3.Mean,
    O3_AQI = O3.AQI,
    SO2_Mean = SO2.Mean,
    SO2_AQI = SO2.AQI,
    CO_Mean = CO.Mean,
    CO_AQI = CO.AQI,
    Year = Date.Number,
    Lat = Latitude,
    Long = Longitude,
    Zipcode = Zipcode
  )
