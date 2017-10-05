library("shiny")

shinyUI(
  pageWithSidebar(
    headerPanel("Predicted wins based on runs"),
    sidebarPanel(
      sliderInput("runs", 'Runs scored', 400, min = 400, max = 1500, step = 5),
      sliderInput("allowed", "Runs Allowed", 400, min = 400, max = 1500),
      submitButton('Submit')
    ),
    mainPanel(
      h3("Results of prediction"),
      h4("Runs scored:"),
      verbatimTextOutput("inputValue1"),
      h4("Runs allowed:"),
        verbatimTextOutput("inputValue2"),
      h4('Which results in a prediction of '),
      verbatimTextOutput("prediction")
    )
  )
)