# SaniPath Cross Deployment Dashboard


library(shiny)
library(shinythemes)
library(leaflet)


shinyUI(fluidPage(
        
        titlePanel("SaniPath Deployment Dashboard"),
        
        # Theme
        theme = shinytheme("spacelab"),
        # themeSelector(),
  
        sidebarLayout(
                sidebarPanel(
                        fluidRow(
                                radioButtons("deployments", "Deployments",
                                             choices = c("Cambodia" = "1",
                                                         "Banglasdesh" = "2"),
                                             selected = "1")
                                )
                        ),
        mainPanel(
               tabsetPanel(
                    tabPanel("Overview",
                             textOutput("txtmain"),
                             plotOutput("hist")
                             ),
                    tabPanel("Sample",
                             textOutput("txtsample")
                             ),
                    tabPanel("Map",
                             leafletOutput("map1")
                             ),
                    tabPanel("Lab",
                             textOutput("txtlab")
                             )
                    )
               )
        )
        )
        )
                        