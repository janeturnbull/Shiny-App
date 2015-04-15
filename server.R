farenheit <- function(temp) (temp*9/5) + 32
shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$temp})
    output$conversion <- renderPrint({farenheit(input$temp)})
  }
)