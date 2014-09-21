

library(shiny)
BMI <- function(Weight, Height) Weight/(Height*Height)
    
shinyServer(
    
    function(input, output) {
        output$inputValue1 <- renderPrint({input$Weight})
        output$inputValue2 <- renderPrint({input$Height})
        # reactive method to show the result according to chaning input
        output$BMI <- renderPrint({BMI(as.numeric(input$Weight),as.numeric(input$Height))})

})