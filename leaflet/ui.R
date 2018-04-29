library("googlesheets")
library("leaflet")
library("shiny")
library(shinydashboard)
library("rgdal")
library("raster")
library("sp")


shinyUI(
  fluidPage(
    includeCSS("styles.css"),
    titlePanel("Project Ethiopia: Project Map"),
    fluidRow(
      column(4,
             tabsetPanel(
               tabPanel("Education",
                        fluidRow(leafletOutput("map"))

               ),
               tabPanel("Healthy Villages",
                        fluidRow(leafletOutput("mapHV")),
                        "More controls"
               ),
               tabPanel("Economic Opportunity",
                        fluidRow(leafletOutput("mapEO"))
               )
             )
      ))
  )
)
