#' Generate chunks of HTML/JS code
#'
#' These functions are used internally by \code{\link{writeMap}} to generate chunks of HTML and Javascript code.
#'
#'@rdname chunks
incLeaflet <- function(loc){
  if(loc == "online"){
    res <- paste("<link rel=\"stylesheet\" href=\"http://cdn.leafletjs.com/leaflet-0.7.2/leaflet.css\" />
<script src=\"http://cdn.leafletjs.com/leaflet-0.7.2/leaflet.js\"></script>")
  } else {
    res  <- paste("<link rel=\"stylesheet\" href=\"", loc, "/leaflet.css\" />
<script src=\"", loc, "/leaflet.js\"></script>", sep="")
  }
return(res)
}

#'@rdname chunks
incEncoding <- function(code){
  res <- paste("<meta charset=", code, ">", sep="")
  return(res)
}

incPopupCSS <- function(){
  res <- "<style type=\"text/css\">\n\t.leaflet-popup-content {\n\t\twidth:auto !important;\n\t}\n</style>"
  return(res)
}

#'@rdname chunks
incData <- function(prefix){
  paste("<script src=\"", prefix,"_data/", prefix,"_datapoints.js\"></script>
<script src=\"", prefix,"_data/", prefix,"_dataicons.js\"></script>
<script src=\"", prefix,"_data/", prefix,"_datalines.js\"></script>
<script src=\"", prefix,"_data/", prefix,"_datapolygons.js\"></script>",  # Fix le 2eme prefix + faire une fonction
  sep="")
}

#'@rdname chunks
initMap0 <- function(height, width){
  paste("<div id=\"map\" class=\"map\" style=\"height: ", height,"px; width: ",width, "px\"></div>", sep="")
}

#'@rdname chunks
initMap1 <- function(setView, setZoom){
  paste("var map = L.map('map', {zoomControl:false, attributionControl:false}).setView([", setView[1], ", ", setView[2],"], ", setZoom, ");", sep="")
}