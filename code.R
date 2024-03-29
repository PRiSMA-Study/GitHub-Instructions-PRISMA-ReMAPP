# change made from the local end.

library(tidyverse)

ui <- fluidPage(
  selectInput("analisis_linea_marco_temporal",
              "Marco temporal", choices=c("Diaria", "Mensual")),

  uiOutput("date_slider") # UI placeholder
)

server <- function(input, output, session) {

  output$date_slider <- renderUI({ # create UI

    if (input$analisis_linea_marco_temporal == "Diaria"){

      sliderInput("analisis_linea_fecha_diaria", "",
                  min=as.Date("2019-01-01"), max=as.Date("2021-09-30"),
                  value= as.Date("2021-01-01"),
                  timeFormat="%d/%m/%Y")
      }
  })
}

## Add a new comments here
shinyApp(ui, server)

## Made a change on the Github remote repo

## A repeatment 
ui <- fluidPage(
  selectInput("analisis_linea_marco_temporal",
              "Marco temporal", choices=c("Diaria", "Mensual")),

  uiOutput("date_slider") # UI placeholder
)

server <- function(input, output, session) {

  output$date_slider <- renderUI({ # create UI

    if (input$analisis_linea_marco_temporal == "Diaria"){

      sliderInput("analisis_linea_fecha_diaria", "",
                  min=as.Date("2019-01-01"), max=as.Date("2021-09-30"),
                  value= as.Date("2021-01-01"),
                  timeFormat="%d/%m/%Y")
      }
  })
}

## Add a new comments here
shinyApp(ui, server)
