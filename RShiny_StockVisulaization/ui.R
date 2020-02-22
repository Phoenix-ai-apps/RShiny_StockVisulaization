library(shiny)

ui <- fluidPage(
  
     sidebarLayout(
       sidebarPanel(
         h2("Visualize the stock"),
         
         textInput("symb", h3("Enter Share Code"), 
                   value = "Enter text..."),   
         
         dateRangeInput("dates", h3("Date range")),
         
         checkboxInput("log", label = "Plot y axis on log scale"),
         
         checkboxInput("adjust", label = "Adjust price for inflation")
          ),
       
       mainPanel(
         plotOutput("plot")
       )
     )
)