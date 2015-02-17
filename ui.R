
# Version 1. Generic Calcularion wih input
# library(shiny)
# shinyUI(pageWithSidebar(
#         headerPanel("Max Heart Rate"),
#         sidebarPanel(
#                 numericInput('Age', 'Select your Age (years)', 37, min = 17, max = 70, step = 5),
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
# 
# library(shiny)
# shinyUI(pageWithSidebar(
#         headerPanel("Max Heart Rate"),
#         sidebarPanel(
#                 sliderInput('Age', 'Age (years)', value=37, min = 15, max = 75, step = 1,),
#                 sliderInput('Weight', 'Weight in (Kgs)', 94, min = 60, max = 150, step = 5),
#                 checkboxGroupInput("Gender", "Checkbox",
#                                    c("Female" = "Female",
#                                      "Male" = "Male")),
#                                 submitButton('Submit')
#         ),
#         mainPanel(
#                 h3('Recommendation'),
#                 h4('Your Age'),
#                 verbatimTextOutput("inputValue"),
#                 h4('Your Gender'),
#                 verbatimTextOutput("oGender"),
#                 h4('Your Weight'),
#                 verbatimTextOutput("oWeight"),
#                 h4('Maximum Heart Rate Recommended in lpm is:'),
#                 verbatimTextOutput("MaxHeartRate")
#         )
# )
# )


library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Max Heart Rate"),
        sidebarPanel(
                sliderInput('Age', 'Select your Age (years)', value=37, min = 15, max = 75, step = 1,),
                sliderInput('Weight', 'Select your Weight in (Kgs)', value=94, min = 60, max = 150, step = 1),
                checkboxGroupInput("Gender", "Choose only one, and hit the submit button",
                                   c("Female (2)" = 2,
                                     "Male (1)" = 1)),
                submitButton('Submit')
        ),
        mainPanel(
                h3('Recommendation'),
                h4('Your Age'),
                verbatimTextOutput("oAge"),
                h4('Your Gender'),
                verbatimTextOutput("oGender"),
                h4('Your Weight'),
                verbatimTextOutput("oWeight"),
                h4('Maximum Heart Rate Recommended in lpm is:'),
                verbatimTextOutput("oHeartRate")
        )
)
)