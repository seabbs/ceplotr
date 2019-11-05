#' Combine Model Simulations, Costs, and Health Utilities
#'
#' @param simulations A dataframe of simulations. An example of the format required is \code{ceplotr::example_simulation}.
#' @param costs A dataframe costs. An example of the format required is \code{ceplotr::example_costs}.
#' @param health_utility A dataframe health utilities. An example of the format required is \code{ceplotr::example_health_utility}.
#' @param discounting Numeric, defaulting to none. 
#'
#' @return A dataframe of combined cost effectiveness data
#' @export
#'
#' @examples
#' 
combine_data <- function(simulations = NULL, costs = NULL,
                         health_utility = NULL, discounting = NULL) {
  
  if (is.null(discounting)) {
    discounting <- 0
  }

  ## Data checks - error with informative message if issue found
  ceplotr::check_simulation(simulations)
  ceplotr::check_costs(costs)
  ceplotr::check_health_utility(health_utility)
  
  
  ## Combine data
  
  
  
  ## Return data
  class(ce_data) <- c("ceplotr_analysis", class(ce_data))
  
  return(ce_data)
}