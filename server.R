library(shiny)
library(tm)
library(ggplot2)

source("functions.R")

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$predict<-renderUI({
        if(checkSpace(input$text)=="?"){
            output$css <- renderUI({
                tags$head(tags$style("#predict{color: red;
                                 }"
                )
                )
            })
        }else{
                output$css <- renderUI({
                    tags$head(tags$style("#predict{color: green;
                                 }"
                    )
                    )
                })
            }

        HTML(checkSpace(input$text))
    })
    
    
    #plots
    output$bigrams<-renderPlot({
        bi<-head(biGrams[order(biGrams$freq,decreasing=T),],20)
        
        ggplot(data=bi,aes(x=freq,y=reorder(term,freq)))+
            geom_bar(stat = "identity")+labs(x="Frequency",
                                             y="Bigrams",
                                             title = "Top 20 Bigrams in corpus")+
            scale_x_continuous(breaks=seq(0,300000,50000))+
            theme(axis.text.x = element_text(size=12),
                  axis.text.y = element_text(size=12))
    })
    
    output$trigrams<-renderPlot({
        tri<-head(triGrams[order(triGrams$freq,decreasing=T),],20)
        ggplot(data=tri,aes(x=freq,y=reorder(term,freq)))+
            geom_bar(stat = "identity")+labs(x="Frequency",
                                             y="Trigrams",
                                             title = "Top 20 Trigrams in corpus")+
            scale_x_continuous(breaks=seq(0,25000,5000))+
            theme(axis.text.x = element_text(size=12),
                  axis.text.y = element_text(size=12))
    })
    
    output$quadgrams<-renderPlot({
        quad<-head(quadGrams[order(quadGrams$freq,decreasing=T),],20)
        ggplot(data=quad,aes(x=freq,y=reorder(term,freq)))+
            geom_bar(stat = "identity")+labs(x="Frequency",
                                             y="Quadgrams",
                                             title = "Top 20 Quadgrams in corpus")+
            theme(axis.text.x = element_text(size=12),
                  axis.text.y = element_text(size=12))
    })
})