shinyUI(
    pageWithSidebar(
        # Application title
        headerPanel("BMI calculation"),
        
    
    sidebarPanel(
        # insert the weight and height you want to calculate
        numericInput('Weight','weight kg', 60),
        numericInput('Height','height m', 1.65)       
        ),
    
    mainPanel(
        h3('Results of Calculation'),
        h4('You entered weight'),
        verbatimTextOutput("inputValue1"),
        h4('You entered height'),
        verbatimTextOutput("inputValue2"),
        h4('Your BMI according to your weight'),
        verbatimTextOutput("BMI")
        
        )
    )
)