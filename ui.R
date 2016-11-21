#EXAMPLE
library(leaflet)

# Choices for drop-downs
vars <- c(
  "Average NO2" = "NO2.Mean",
  "NO2 Air Quality Index" = "NO2.AQI",
  "Average O3" = "O3.Mean",
  "O3 Air Quality Index" = "O3.AQI",
  "Average SO2" = "SO2.Mean",
  "SO2 Air Quality Index" = "SO2.AQI",
  "Average CO" = "CO.Mean",
  "CO Air Quality Index" = "CO.AQI"
)


navbarPage("US Pollution", id="nav",
           
  tabPanel("Interactive map",
    div(class="outer",
                        
      tags$head(
        # Include our custom CSS
        includeCSS("styles.css"),
        includeScript("gomap.js")
      ),
                        
                        leafletOutput("map", width="100%", height="100%"),
                        
                        # Shiny versions prior to 0.11 should use class="modal" instead.
                        absolutePanel(id = "controls", class = "panel panel-default", fixed = TRUE,
                                      draggable = FALSE, top = 60, left = "auto", right = 20, bottom = "auto",
                                      width = 330, height = "auto",
                                      
                                      h2("Data Explorer"),
                                      
                                      sliderInput("slide", "Select a date", min = 2000, max = 2010, value = 2000, step = 1, animate = TRUE),
                                                         
                                      
                                      selectInput("color", "Color", vars, selected = "NO2.Mean"),
                                      selectInput("size", "Size", vars, selected = "NO2.Mean")
                                      
                                      
                                      
                        ),
                        
                        tags$div(id="cite",
                                 'Data compiled for ', tags$em('Hack OHIO 2016'), ' by Cole & Elizabeth.'
                        )
                    )
           ),
          
           conditionalPanel("false", icon("crosshair"))
)
