#' Soil Erosion Rates
#'


soil_erosion<- function(area, time){

  erosion = area*time*1.9

  return(erosion)


}
