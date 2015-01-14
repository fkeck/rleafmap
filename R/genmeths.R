splPrint <- function(x){
  print.default(x, max=10)
}

#'@export
print.splpoints <- splPrint

#'@export
print.splicons <- splPrint

#'@export
print.spllines <- splPrint

#'@export
print.splpolygons <- splPrint

#'@export
print.splgrid <- splPrint

#'@export
summary.basemap <- function(x){
  cat(x$name, ":\nrleafmap tile layer\nSource : ", x$URL)
}

#'@export
summary.splpoints <- function(x){
  cat(x$name, ":\nrleafmap vector layer of", length(x$coords[,1]), "points symbolized by circles \n")
}

#'@export
summary.splicons <- function(x){
  cat(x$name, ":\nrleafmap vector layer of", length(x$coords[,1]), "points symbolized by icons \n")
}

#'@export
summary.spllines <- function(x){
  cat(x$name, ":\nrleafmap vector layer of", length(x$coords), "lines \n")
}

#'@export
summary.splpolygons <- function(x){
  cat(x$name, ":\nrleafmap vector layer of", length(x$coords), "polygons \n")
}

#'@export
summary.splgrid <- function(x){
  cat(x$name, ":\nrleafmap raster layer from a sp SpatialGridDataFrame\n------------\n")
  print(x$x)
  cat("------------")
}

#'@export
summary.ui <- function(x){
  cat("User interface configuration for rleafmap maps\n------------\n")
  cat("Zoom position :                ",x$zoom, "\n")
  cat("Layers control position :      ",x$layers, "\n")
  cat("Attributions position :        ",x$attrib, "\n")
  cat("Additionnal attribution text : ",x$attrib.text, "\n")
  cat("------------")
}