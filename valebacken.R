library(sf)
library(mapview)
library(dplyr)


vallebacken <- "C:/Users/sethb/Svag_is_2/svag_is_2/vallebacken2.gpkg"


network <- st_read(network_fil, crs = 3006)

mapview(network_fil)

mapview(network)
vallebacken <- st_layers(network_fil)

print(vallebacken)


avrinning <- st_read(vallebacken, layer = "Avrinningsområde", crs = 3006)
hojdkurvor <- st_read(vallebacken, layer = "Höjdkurvor", crs = 3006)
# layer3 <- st_read(vallebacken, layer = "Längsprofil", crs = 3006)
markytor <- st_read(vallebacken, layer = "Markytor", crs = 3006)
back <- st_read(vallebacken, layer = "Vattendrag", crs = 3006)

mapview(layer1, color = "lightgreen", alpha.regions = 0.5)+
  mapview(hojdkurvor, color = "red", alpha = 0.5)+
  mapview(back, color = "blue")+
  mapview(markytor)

############################################ Chatgpt
# Specify the path to your Geopackage file
gpkg_file <- "path/to/your/file.gpkg"


# List all layers in the Geopackage
layers <- st_layers(gpkg_file)
print(layers)


# Read specific layers by name
layer1 <- st_read(gpkg_file, layer = "layer_name_1")
layer2 <- st_read(gpkg_file, layer = "layer_name_2")

########################################################
# Specify the path to your Geopackage file
qgis_fil <- "C:/Users/Waleed/test11/Geo.gpkg"


# List all layers in the Geopackage
layers <- st_layers(qgis_fil)
print(layers)


# Read specific layers by name
avrinning <- st_read(qgis_fil, layer = "Geo", crs = 3006)
hojdkurvor <- st_read(qgis_fil, layer = "oh_25", crs = 3006)
back <- st_read(qgis_fil, layer = "hl_25", crs = 3006)
markytor <- st_read(qgis_fil, layer = "Markytor", crs = 3006)

mapview(avrinning, color = "lightgreen", alpha.regions = 0.5)+
  mapview(hojdkurvor, color = "red", alpha = 0.5)+
  mapview(back, color = "blue")+
  mapview(markytor)

har snabbmeny
Skriv