library("shiny")

shinyUI(
  pageWithSidebar(
    headerPanel("Pythagorean expectation"),
    sidebarPanel(
      sliderInput("runs", 'Runs scored', 400, min = 400, max = 1500, step = 1),
      sliderInput("allowed", "Runs Allowed", 400, min = 400, max = 1500, step = 1),
      submitButton("Submit")
    ),
    mainPanel(
      h4("This Shiny app uses the Bill James' Pythagorean Formula and predicts the number of wins a Major League Basbeall Team can expect over a 162 games season given a user provided number of runs scored and runs allowed."),
      h4("Use the two sliders on the left to input the number of runs a team scores and the number of runs a team allows. The prediction will appear on the bottom of the window."),
      h3("Results of prediction"),
      h4("Runs scored:"),
      verbatimTextOutput("inputValue1"),
      h4("Runs allowed:"),
        verbatimTextOutput("inputValue2"),
      h4("Predicted number of wins:"),
      verbatimTextOutput("prediction")
    )
  )
)