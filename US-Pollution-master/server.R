#OUR POLLUTION DATA 
library(shiny)
library(leaflet)
library(htmltools)

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
      
      zipdata <- switch(
        timeBy-1999,
        pollution.2000,
        pollution.2001,
        pollution.2002,
        pollution.2003,
        pollution.2004,
        pollution.2005,
        pollution.2006,
        pollution.2007,
        pollution.2008,
        pollution.2009,
        pollution.2010
      )
      
      colorData <- zipdata[[colorBy]]
      pal <- colorBin("Spectral", colorData, 7, pretty = FALSE)
      
      
      radius <- zipdata[[sizeBy]] / max(zipdata[[sizeBy]]) * 300000
      
      
       
      leafletProxy("map", data = zipdata) %>%
        clearShapes() %>%
        addCircles(~Longitude, ~Latitude, radius=radius,
                   stroke=FALSE, fillOpacity=0.4, fillColor=pal(colorData)) %>%
        addLegend("bottomleft", pal=pal, values=colorData, title=colorBy,
                  layerId="colorLegend")
      
    })
    
  }
)