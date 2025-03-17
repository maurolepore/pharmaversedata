library(shiny)
library(teal)
library(pharmaversedata)

datasets <- pharmaversedata::specs$datasets
variables <- pharmaversedata::specs$variables

td <- teal_data(
  mtcars = variables
)
app <- init(
  data = td,
  modules = example_module("Dictinoary")
)

shinyApp(app$ui, app$server)
