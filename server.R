#
# Server
#

library(shiny)

data_col <- read.csv("data/data_col.csv", header=T, sep = ";")


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
        
        output$overviewtbl <- renderTable({
                overview_tbl <- data.frame(cbind(
                        c(length(data_col$col_sample_type))))
                colnames(overview_tbl) <- c("Sample")
                overview_tbl
        })
        
        output$txtmain <- renderText({
                paste("here is some random text", "asdf")
        })
        
        output$distPlot <- hist(data_col$col_id)
  
})
