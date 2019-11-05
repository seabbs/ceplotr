#' Summarising a cost effectiveness analysis
#'
#' @description \code{summary} method for class "ceplotr_analysis".
#' @param object A dataframe created with \code{combine_data}.
#' @param ... Pass additional arguements to summary function.
#' @seealso summary
#' @aliases summary
#' @method summary ceplotr_analysis
#' @return Prints a summary table to the terminal and a summary plot.
#' @export
#' @examples
#'
#' 
#'
summary.ceplotr_analysis <- function(object = NULL, ...) {
  if (is.null(object)) {
    stop("A dataframe created by ceplotr::combine_data is required.")
  }
  

  
  sum_list <- c()
  
  return(sum_list)
}