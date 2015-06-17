library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Prediction of Child Height") , 
  sidebarPanel(
    h2("User Inputs:"),
    numericInput('Parent','Parent Height inches',value=68,min=64,max=73,step=1),
    submitButton('Submit')
  ),
  mainPanel(
    
    tabsetPanel(
      
      tabPanel(
      "App",
      h3("Results of Prediction"),
      h4('You Entered Parent Height'),
      verbatimTextOutput("InputValue"),
      h4("Here is the predicted Child Height"),
      verbatimTextOutput("Prediction") 
              ),
      tabPanel(
        "About",mainPanel(includeMarkdown("About.Rmd")
                          )
         
               )
               )
    
  )
  )
  )