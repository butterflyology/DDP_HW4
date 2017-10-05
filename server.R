library("shiny")

Pythag.line <- function(runs, allowed){
  Pythag <- (runs^2 / (runs^2 + allowed^2)) * 162
}


shinyServer(
  function(input, output) {
    output$inputValue1 <- renderPrint({input$runs})
    output$inputValue2 <- renderPrint({input$allowed})
    output$prediction <- renderPrint({round(Pythag.line(input$runs, input$allowed))})
  }
)