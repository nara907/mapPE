library("googlesheets")
library("leaflet")
library("shiny")
library("rgdal")
library("raster")
library("sp")
library("devtools")
library("roxygen2")
library('mapPE')

sheet<- gs_key('1hT9JHKGhKR1QcUDB8ylylURmgxoIkylLd4SF9zqdTVo')
kebele<-shapefile("inst/extdata/kebeles.shp")
#fnm1<- system.file("/extdata/kebeles.shp", package = "mapPE")
#kebele <- shapefile(fnm1)
getwd()

#Creating School points
Schoolpoints<- sheet %>% gs_read(ws = 1, range = "A1:R18")

#Adding data to shapefile
UniT<- sheet %>% gs_read(ws = 2, range = "A1:C34")
UniT<- as.data.frame(UniT)
#merge to kebeles
oo <- merge(kebele,UniT, by="id")

HV<- sheet %>% gs_read(ws = 3, range = "A1:L34")
HV<- as.data.frame(HV)
kebeleS <- merge(oo,HV)

#Adding economic opportunities data
EconOpp<- sheet %>% gs_read(ws = 4, range = "A1:E34")
EconOpp<- as.data.frame(EconOpp)
kebeles <- merge(kebeleS,EconOpp)


#install.packages('rsconnect')
#library(rsconnect)
#rsconnect::setAccountInfo(name='naramccray',
                          #token='23F9B0E5213EA9806412DC9AE18F1E69',
                          #secret='IKZFch+n8U2OwVfhHheuOyc7UzcA6A9lYXJ0fSdw')
#rsconnect::deployApp()
#shiny::runApp('https://github.com/nara907/mapPE')
#getwd()


