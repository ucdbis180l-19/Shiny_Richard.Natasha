#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)

# Define UI for application that draws scatter plot
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Tomato Leaf and Width Length"),
  
  # Sidebar with a radioButtons input 
  sidebarLayout(
    sidebarPanel(
       radioButtons("Characters",
                   "Display by",
                   c("alt",
                   "species")
    )),
    
    # Shows a scatter plot between leaf length and width. Points vary based on trait 
    mainPanel(
       plotOutput("scatterPlot")
    )
  )
))
