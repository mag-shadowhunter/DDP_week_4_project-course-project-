#Load the library
library(markdown)

##ui code
##Code about choosing a car


shinyUI( fluidPage(
    plotOutput("plot", brush = "plot_brush"),
    tableOutput("data"),
    sidebarPanel(actionButton("goButton", "Select a region on the plotted points to start"))
    
))
 
