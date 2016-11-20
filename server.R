#OUR POLLUTION DATA 
library(shiny)
library(leaflet)

zipdata <- pollution
zipdata$Mean.Per.Day <- NULL
zipdata$SO2.AQI <- NULL
zipdata$X.2 <- NULL
zipdata$X <- NULL
zipdata$State.Code <- NULL
zipdata$County.Code <- NULL
zipdata$Site.Num <- NULL
zipdata$Address <- NULL
zipdata$State <- NULL
zipdata$County <- NULL
zipdata$City <- NULL
zipdata$Date.Local <- NULL
zipdata$NO2.Units <- NULL
zipdata$NO2.1st.Max.Hour <- NULL
zipdata$NO2.1st.Max.Value <- NULL
zipdata$O3.Units <- NULL
zipdata$O3.1st.Max.Hour <- NULL
zipdata$O3.1st.Max.Value <- NULL
zipdata$SO2.Units <- NULL
zipdata$SO2.1st.Max.Hour <- NULL
zipdata$SO2.1st.Max.Value <- NULL
zipdata$CO.Units <- NULL
zipdata$CO.1st.Max.Hour <- NULL
zipdata$CO.1st.Max.Value <- NULL


shinyServer(
  function(input, output){
    # variable date stores the slide selected value
    output$date <- renderText(input$slide)
    
    output$map <- renderLeaflet({
      leaflet() %>%
        addTiles(
          urlTemplate = "//{s}.tiles.mapbox.com/v3/jcheng.map-5ebohr46/{z}/{x}/{y}.png",
          attribution = 'Maps by <a href="http://www.mapbox.com/">Mapbox</a>'
        ) %>%
        setView(lng = -93.85, lat = 37.45, zoom = 4)
    })
    
    
    
    
    # NOT NEEDED ------------------------------------
    
    # This observer is responsible for maintaining the circles and legend,
    # according to the variables the user has chosen to map to color and size.
    observe({
      colorBy <- input$color
      sizeBy <- input$size
      timeBy <- input$slide
      
      colorData <- zipdata[[colorBy]]
      pal <- colorBin("Spectral", colorData, 7, pretty = FALSE)
      
      
      radius <- zipdata[[sizeBy]] / max(zipdata[[sizeBy]]) * 30000
      
      leafletProxy("map", data = zipdata) %>%
        clearShapes() %>%
        addCircles(~Longitude, ~Latitude, radius=radius,
                   stroke=FALSE, fillOpacity=0.4, fillColor=pal(colorData)) %>%
        addLegend("bottomleft", pal=pal, values=colorData, title=colorBy,
                  layerId="colorLegend")
    })
    
    
    
    
  }
)