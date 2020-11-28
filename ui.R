library(shiny)
library(markdown)
shinyUI(navbarPage("Find the Right Car For You",
                   #shinyUI(titlePanel("Find the Right Car For You",
                   tabPanel("Car Finder",
                            sidebarLayout(
                                sidebarPanel(
                                    helpText("Provide your car requirements:"),
                                    checkboxGroupInput('am', 'Transmission:', c("Automatic"=0, "Manual"=1), selected = c(0,1)),
                                    checkboxGroupInput('cyl', 'Number of cylinders:', c("Four"=4, "Six"=6, "Eight"=8), selected = c(4,6,8)),
                                    sliderInput('mpg', 'Miles Per Gallon', min=5, max=50, value=c(5,50), step=5),
                                    sliderInput('hp', 'Horsepower', min=50, max=340, value=c(50,340), step=10),
                                    sliderInput('disp', 'Displacement', min=70, max=480, value=c(70,480), step=10),
                                    submitButton("Submit Your Requirements")
                                ),
                                mainPanel(
                                    dataTableOutput('table')
                                )
                            )
                   )))  