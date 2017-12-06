# SaniPath Cross Deployment Dashboard


library(shiny)
# library(shinythemes)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
        titlePanel("SaniPath Deployment Dashboard"),
        
        column(3, fluidRow(
        )),
        
        
        #Theme
        # theme = shinytheme("spacelab"),
        # themeSelector(),
  
        column(1),
        column(8,
               tabsetPanel(type = "tabs",
                    tabPanel("Overview",
                             textOutput("txtmain"),
                             tableOutput("overviewtbl")),
                    tabPanel("Sample",
                             plotOutput("distPlot")),
                    tabPanel("Lab",
                             plotOutput("distPlot")),
                    tabPanel("Household",
                             plotOutput("distPlot")),
                    tabPanel("Community",
                             plotOutput("distPlot")),
                    tabPanel("School",
                             plotOutput("distPlot"))
               )
        )
))
                        