library(shiny)

vars <- setdiff(names(mtcars), "Autos")

shinyUI(fluidPage(
  titlePanel("Clustering de autos"),
  sidebarLayout(
  sidebarPanel(
    selectInput('xcol', 'X Variable', vars),
    selectInput('ycol', 'Y Variable', vars, selected = vars[[2]]),
    numericInput('clusters', 'Numero clusters', 3, min = 1, max = 9)
  ),
  mainPanel(
    plotOutput('plot1'),
    h4("Se trata de un analisis de la base mtcars y sus diferentes indicadores de forma bi-variada. 
       Por mas informacion ver: https://cran.r-project.org/web/packages/explore/vignettes/explore_mtcars.html"))
    )))

