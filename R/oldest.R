#' A oldest Function
#'
#' This function allows you to find the oldest player of that year
#' @param y is the Year that we are going to figure it out
#' @param dataset is the dataset of NBA
#' @keywords age
#' @export
#' @examples
#' oldest()

oldest <- function(dataset, y){
  d<-subset(dataset,dataset$Year==y)
  d<-d[,c(1,2,4)]
  d<-d[d$Age == max(d$Age),]
  d[1,]
}
