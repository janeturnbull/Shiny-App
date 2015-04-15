shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Temperature Conversion"),
    sidebarPanel(
      numericInput('temp', 'Temperature in Celsius', 30, min = -100, max = 200, step = 5),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of conversion'),
      h4('You entered a temperature in Celsius of'),
      verbatimTextOutput("inputValue"),
      h4('Which resulted in a conversion to Farenheit of '),
      verbatimTextOutput("conversion")
    )
  )
)