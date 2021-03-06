#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)
data <- read.csv("Tomato.csv")
tomato <- transform(data, ratio = leafleng / leafwid)



# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$scatterPlot <- renderPlot({
    
    species_color <- ggplot(data=tomato, 
                     aes(x=leafleng, 
                         y=leafwid)) +
      geom_point(aes_string(color=input$Characters)) +
      geom_abline(slope=1, intercept=0) #geom_abline displays a 1:1 ratio for length and width
    
    species_color
  })
})
