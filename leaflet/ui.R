library("googlesheets")
library("leaflet")
library("shiny")
library(shinydashboard)
library("rgdal")
library("raster")
library("sp")
library(shinymaterial)



#shinyUI(
#  fluidPage(
#    titlePanel("Project Ethiopia: Project Map"),
#    fluidRow(
#      column(10,
#             tabsetPanel(
#               tabPanel("Education",
 #                       fluidRow(leafletOutput("map", height= 800))
#
 #              ),
  #             tabPanel("Healthy Villages",
   #                     fluidRow(leafletOutput("mapHV", height= 800)),
    #                    "More controls"
     #          ),
      #         tabPanel("Economic Opportunity",
       #                 fluidRow(leafletOutput("mapEO", height= 800))
        #       )
         #    )
    #  ))
#  )
#)

shinyUI( material_page(
  title = "Project Ethiopia Achievement Map",
  nav_bar_color = "green darken-2",
  material_tabs(
    tabs = c(
      "Education"= "Education_Tab",
      "Healthy Villages"= "HV_Tab",
      "Economic Opportunity"= "EO_Tab"),
    color= "green"),
  material_tab_content(
    tab_id = "Education_Tab",
    fluidRow(leafletOutput("map", height= 600))
  ),
  material_tab_content(
    tab_id= "HV_Tab",
    fluidRow(leafletOutput("mapHV", height= 600))
  ),
  material_tab_content(
    tab_id= "EO_Tab",
    fluidRow(leafletOutput("mapEO", height= 600))
  )
    ))

