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
  
  # # Application title
  # 
  # 
  # # Sidebar with a slider input for number of bins 
  # sidebarLayout(
  #   sidebarPanel(
  #      sliderInput("bins",
  #                  "Number of bins:",
  #                  min = 1,
  #                  max = 50,
  #                  value = 30)
  #   ),
    
    # Show a plot of the generated distribution
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
                        