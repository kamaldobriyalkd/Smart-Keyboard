library(shiny)
library(shinycssloaders)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    tags$head(tags$style("#predict{
                                 font-size: 20px;
                                 font-style: italic;
                                 }"
    )
    ),
    tags$head(
        uiOutput("css")
    ),
    # Application title
    titlePanel("Smart Keyboard"),

    sidebarLayout(
        sidebarPanel(
            HTML("
            This app can predict <b>next word</b> to be typed. Just<br>
            start typing on the alongside text field and <b>hit space</b> after
            each word typed, you will see atmost three words in green color
            which can be next words.
            <li><b style=\"color:red\">?</b> means no word predicted</li>
                 ")
        ),

        mainPanel(
            tabsetPanel(
                tabPanel("Homepage",br(),
                         textInput("text","Enter text:"),
                         tags$strong(HTML("Predict words:&nbsp;"),style ="float:left;font-size: 20px"),
                         uiOutput("predict")),
                tabPanel("Top Bigrams",br(),withSpinner(plotOutput("bigrams"))),
                tabPanel("Top Trigrams",br(),withSpinner(plotOutput("trigrams"))),
                tabPanel("Top Quadgrams",br(),withSpinner(plotOutput("quadgrams")))
                )
        )
    )
))
