#
# Server
#

library(shiny)
library(ggplot2)

data_col <- read.csv("data/data_col.csv", header=T, sep = ",")


# Define server logic required to draw a histogram
shinyServer(function(input, output, session) {
        
        
        output$hist <- renderPlot({
                ggplot(data_col[data_col$deployment== input$deployments, ], aes(x=col_sample_type)) +
                        geom_histogram()
        })
        
        output$txtmain <- renderText({
                paste("here is some text for the first tab")
        })
        
        output$txtsample <- renderText({
                paste("here is some random text for the sample tab")
        })
        
        output$txtlab <- renderText({
                paste("bla bla text for lab tab")
        })
        
        output$map1 <- renderLeaflet({
                leaflet() %>% addTiles() %>% addCircleMarkers(
                        lng = runif(10),
                        lat = runif(10),
                        layerId = paste0("marker", 1:10))
        })
        
        observeEvent(input$map1_marker_click, {
                leafletProxy("map1", session) %>%
                        removeMarker(input$map1_marker_click$id)
        })
        

})
