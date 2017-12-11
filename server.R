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
        
        points <- eventReactive(input$recalc, {
                cbind(rnorm(40) * 2 + 13, rnorm(40) + 48)
        }, ignoreNULL = FALSE)
        
        output$mymap <- renderLeaflet({
                leaflet() %>%
                        addProviderTiles(providers$Stamen.TonerLite,
                                         options = providerTileOptions(noWrap = TRUE)
                        ) %>%
                        addMarkers(data = points())
        })
        

})
