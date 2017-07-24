#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Cars and Gears"),
  column (
    5,
    h3('Data Set Sample'),
    p (
      paste (
        'The mtcars dataset contains the various cars models with given features such as mpg,cyl,gears',
        'and various such other properties. The given program takes the input of the gear of the car',
        'and plots a graph of mpg vs cyl for each gear selected'
      )
  
    )
  ),
    
 

  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("slider","Gear:",min = 3,max = 5,value = 3)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("distPlot")
    )
  )
))
