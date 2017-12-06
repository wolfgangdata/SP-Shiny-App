# SaniPath Cross Deployment Dashboard


library(shiny)
# library(shinythemes)


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
                             plotOutput("hist")),
                    tabPanel("Sample",
                             textOutput("txtmain1")),
                    tabPanel("Lab",
                             textOutput("txtmain2"))
               )
        )
))
                        