#Loading the libraries 

library(shiny)
library(quantmod)
library(tidyquant)
library(ggplot2)
library(xts)
library(zoo)
library(plotly)
library(tidyr)
library(dplyr)



data <- as.data.frame(CO2) %>%
    gather(conc, uptake)

server <- function(input, output, session) {
    output$plot <- renderPlot({
        ggplot(data, aes (x=conc , y=uptake))+
            geom_point(colour = 'blue', size = 3, type=line)
        }, 
        res = 100, 
        width = "auto",
        height = "auto")
    
    output$data <- renderTable({
        brushedPoints(data, input$plot_brush)
    })
}