library(shiny)
library(googleVis)

data <- as.data.frame(airquality)
colnames(data)[1] <- "Ozone"
colnames(data)[2] <- "Solar Radiation"
colnames(data)[3] <- "Wind"
colnames(data)[4] <- "Temperature"


shinyServer(
  function(input, output) {
  
  dataInput <- reactive({
    subset(data, select=c(input$factor,"Day"), subset=(data$Month == input$month))
    })
  output$view <- renderGvis({
    
  if(input$month==5){
    mont= "May"
  }  else if(input$month==6){
    mont= "June"
  }  else if(input$month==7){
    mont= "July"
  }  else if(input$month==8){
    mont= "August"
  }  else if(input$month==9){
    mont= "September"
  }
  output$month <- renderText({mont})
  
  if(input$factor=="Ozone"){
    output$yl <- renderText({"Mean ozone in parts per billion from 1300 to 1500 hours in"})
  } else if(input$factor=="Solar Radiation"){
    output$yl <- renderText({"Solar radiation in Langleys in the frequency band 4000–7700 in"})
    
  } else if(input$factor=="Wind"){
    output$yl <- renderText({"Average wind speed in miles per hour in"})
    
  } else if(input$factor=="Temperature"){
    output$yl <- renderText({"Maximum daily temperature in degrees Fahrenheit in"})
  }
  datanew <- as.data.frame(dataInput()[,c(input$factor,"Day")])
  
  gvisColumnChart(datanew, xvar="Day" , yvar=input$factor, options(list(width = 600,
                                                           height = 400
                                                           )))
  

})
})
