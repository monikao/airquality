library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Data science"),
  sidebarPanel(
    h3('Measuring airquality in New York form May to September 1973'),
    h4('How selected factors depend on Month?'),
    selectInput("factor", "Type of factor:",
                choices=c("Ozone", "Solar Radiation", "Wind", "Temperature")),
    selectInput("month", "Month:",
                choices=c("5", "6", "7", "8", "9")),
    submitButton('Submit')
    
  ),
  mainPanel(
    textOutput("yl"), textOutput("month"),
    htmlOutput("view")
  )
))