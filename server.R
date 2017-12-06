#
# Server
#

library(shiny)
library(ggplot2)

data_col <- read.csv("data/data_col.csv", header=T, sep = ",")


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
        
        
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
        

})
