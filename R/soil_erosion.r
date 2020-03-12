#' Soil Erosion Rates
#'
#' This function will output the amount of total topsoil eroded when given an area of land in hectars and time elapsed. The rate of soil erosion is based off the averge yearly erosion rate of agricultural lands in the United States



soil_erosion<- function(area, time){

  erosion = area*time*1.9

  return(erosion)

}
