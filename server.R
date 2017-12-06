#
# Server
#

library(shiny)

data_col <- read.csv("data/data_col.csv", header=T, sep = ",")


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
        
        
        output$hist <- renderPlot({
                hist(data_col$deployment)
        })
        
        output$txtmain <- renderText({
                paste("here is some random text", "asdf")
        })
        
        output$txtmain1 <- renderText({
                paste("here is some random text", "asdf")
        })
        
        output$txtmain2 <- renderText({
                paste("here is some random text", "asdf")
        })
        

})
