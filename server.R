library(shiny)
library(UsingR)
fit<-lm(child~parent,galton)
data(galton)
predictheight<- function(height) {
  summary(fit)$coef[1] + height*summary(fit)$coef[2]
} 

shinyServer(
  function(input,output){
          
      output$InputValue<-renderPrint({input$Parent})
      output$Prediction<-renderPrint({predictheight(input$Parent)})
      
      
  })