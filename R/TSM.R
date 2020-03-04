#' A highest TS Function
#'
#' This function allows you to find the player who has the highest TS of that year
#' @param y is the Year that we are going to figure it out
#' @param dataset is NBA datasets
#' @keywords highest TS points
#' @export
#' @examples
#' TSMax(data, 2000)
TSMax <- function(dataset, y){
  a <- subset(dataset,dataset$Year== y)
  a<-a[order(-a$TS.),]
  a[1,2]
}



