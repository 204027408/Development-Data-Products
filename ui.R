library(shiny)
shinyUI(
        pageWithSidebar(
                # Application title
                headerPanel("Max Heart Rate"),
                sidebarPanel(
                        numericInput('Age', 'Age Years', 37, min = 17, max = 70, step = 5),
                        submitButton('Submit')
                ),
                mainPanel(
                        h3('Results of prediction'),
                        h4('You entered'),
                        verbatimTextOutput("inputValue"),
                        h4('Which resulted in a prediction of '),
                        verbatimTextOutput("MaxHeartRate")
                )
        )
)