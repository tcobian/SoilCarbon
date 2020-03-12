#' Soil Erosion Rates
#'
#' @param This function will take inputs of land are in units of hecatres and a unit of time in year
#' @return This function will return the amount of top soil lost on kg after the specified time period
#' @example soil_erosion(10, 1)
#' @references
#' @author Tyler D. Cobian



soil_erosion<- function(area, time){

  erosion = area*time*1.9

  return(erosion)

}
