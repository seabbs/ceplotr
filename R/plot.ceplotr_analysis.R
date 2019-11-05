#' Plotting a cost effectiveness analysis
#'
#' @description \code{plot} method for class "ceplotr_analysis".
#' @param x A dataframe created with \code{combine_data}.
#' @param ... Pass additional arguements to summary function.
#' @seealso plot
#' @aliases plot
#' @method plot ceplotr_analysis
#' @return Plots summary measures for a cost effectiveness analysis
#' @export
#' @examples
#'
#' 
#'
plot.ceplotr_analysis <- function(x = NULL, ...) {
  if (is.null(x)) {
    stop("A dataframe created by ceplotr::combine_data is required.")
  }
  plot <- NULL
  
  return(plot)
}