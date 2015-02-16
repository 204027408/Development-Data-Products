# HeartRate <- function(Age) 220-Age
# shinyServer(
#         function(input, output) {
#                 output$inputValue <- renderPrint({input$Age})
#                 output$oGender <- renderPrint({input$Gender})
#                 output$oWeight <- renderPrint({input$Weight})
#                 output$MaxHeartRate <- renderPrint({HeartRate(input$Age)})
#         }
# )

# HeartRate<- 220-Age+Weight

# HeartRate <- function(Age,Weight) {
#         210-(0.5*Age)-(0.2*Weight)
# }
# shinyServer(
#         function(input, output) {
#                 output$oAge <- renderPrint({input$Age})
#                 output$oWeight <- renderPrint({input$Weight})
#                 output$oGender <- renderPrint({input$Gender})
#                 output$oHeartRate <- renderPrint({HeartRate(input$Age,input$Weight)})
#         }
# )

HeartRateM <- function(Age,Weight) {
        210-(0.5*Age)-(0.2*Weight)
} 
HeartRateW <- function(Age,Weight) {
        210-(0.5*Age)-(0.2*Weight)+4
}

shinyServer(
        function(input, output) {
                output$oAge <- renderPrint({input$Age})
                output$oWeight <- renderPrint({input$Weight})
                output$oGender <- renderPrint({input$Gender})
#                 output$oHeartRate <- renderPrint({HeartRateM(input$Age,input$Weight)})
                output$oHeartRate <- renderPrint({
                        if(input$Gender==1){HeartRateM(input$Age,input$Weight)}
                        else{HeartRateW(input$Age,input$Weight)}
                        })
                        
        }
)
