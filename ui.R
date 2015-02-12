
# Version 1. Generic Calcularion wih input
# library(shiny)
# shinyUI(pageWithSidebar(
#         headerPanel("Max Heart Rate"),
#         sidebarPanel(
#                 numericInput('Age', 'Age (years)', 37, min = 17, max = 70, step = 5),
#                 submitButton('Submit')
#                 ),
#                 mainPanel(
#                         h3('Recommendation'),
#                         h4('You entered'),
#                         verbatimTextOutput("inputValue"),
#                         h4('Maximum Heart Rate Recommended is(lpm):'),
#                         verbatimTextOutput("MaxHeartRate")
#                 )
#         )
# )

# V2. With slider
# library(shiny)
# shinyUI(pageWithSidebar(
#         headerPanel("Max Heart Rate"),
#         sidebarPanel(
#                 sliderInput('Age', 'Age (years)', value=37, min = 15, max = 75, step = 1,)
#         ),
#         mainPanel(
#                 h3('Recommendation'),
#                 h4('You entered'),
#                 verbatimTextOutput("inputValue"),
#                 h4('Maximum Heart Rate Recommended is(lpm):'),
#                 verbatimTextOutput("MaxHeartRate")
#         )
# )
# )


library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Max Heart Rate"),
        sidebarPanel(
                sliderInput('Age', 'Age (years)', value=37, min = 15, max = 75, step = 1,),
                checkboxGroupInput("Gender", "Checkbox",
                                   c("Female" = "Female",
                                     "Male" = "Male"))
        ),
        mainPanel(
                h3('Recommendation'),
                h4('Your Age'),
                verbatimTextOutput("inputValue"),
                h4('Your Gender'),
                verbatimTextOutput("oGender"),
                h4('Maximum Heart Rate Recommended in lpm is:'),
                verbatimTextOutput("MaxHeartRate")
        )
)
)