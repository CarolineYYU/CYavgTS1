#' A  Correlation martix Function
#'
#' This function allows you to compute the correlation matrix of numeric variables in the datasets
#' @param y is the Year that we are going to figure it out
#' @param dataset is the dataset of NBA
#' @keywords Correlatiin ,matrix
#' @export
#' @examples
#' cor_nba()

cor_nba <- function(dataset,y){
  d1<-subset(dataset,dataset$Year==y)
  numeric_d1 <- purrr::keep(d1,is.numeric)
  numeric_d1 <-na.omit(numeric_d1)
  cm<-cor(numeric_d1)
  corrplot::corrplot(cm, method="circle")
}
