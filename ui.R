# SaniPath Cross Deployment Dashboard


library(shiny)
library(shinythemes)


shinyUI(fluidPage(
        titlePanel("SaniPath Deployment Dashboard"),
        
        column(3, fluidRow(
                radioButtons("deployments", "Deployments",
                             choices = c("Cambodia" = "1",
                                         "Banglasdesh" = "2"),
                             selected = "1"
                )
        )),
        
        
        # Theme
        theme = shinytheme("spacelab"),
        # themeSelector(),
  
        column(1),
        column(8,
               tabsetPanel(type = "tabs",
                    tabPanel("Overview",
                             textOutput("txtmain"),
                             plotOutput("hist")),
                    tabPanel("Sample",
                             textOutput("txtsample")),
                    tabPanel("Lab",
                             textOutput("txtlab"))
               )
        )
))
                        