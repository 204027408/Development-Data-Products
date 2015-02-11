HeartRate <- function(Age) 220-Age
shinyServer(
        function(input, output) {
                output$inputValue <- renderPrint({input$Age})
                output$MaxHeartRate <- renderPrint({HeartRate(input$Age)})
        }
)