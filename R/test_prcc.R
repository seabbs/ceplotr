#' Test cost sensitivity using PRCC
#'
#' @param df A dataframe of cost effectiveness data. As produced by \code{combine_data}.
#' @param params A dataframe of parameters used to generate model simulations. See \code{example_parameters} for
#' an example dataset
#' @param target_time Numeric, the time at which to estimate the model sensitivity. If not specified
#' then this will default to the last fitted point that the model has produced output for.
#'
#' @return A data frame containing the names of the parameters in the model, the correlation with the outcome
#' and the p value of this correlation
#' @export
#' @importFrom dplyr bind_rows select arrange select_if bind_cols  desc
#' @importFrom tidyr spread
#' @importFrom epiR epi.prcc
#' @importFrom stats setNames
#' @examples
#' 
#' ## Code
#' test_prcc
test_prcc <- function(df = NULL, params = NULL, target_time = NULL) {
  
  time <- NULL; value <- NULL; Parameter <- NULL; p.value <- NULL;

  df <- df %>% 
    dplyr::filter(time == target_time) %>% 
    select_if(~ var(.) > 0)
  
  ## Join obs to parameters
  sample <- params %>% 
    bind_cols(df %>% 
                select(value) %>% 
                setNames("Observation"))
  
  prcc <- epi.prcc(sample) %>% 
    mutate(Parameter = colnames(params)) %>% 
    select(Parameter, gamma, p.value) %>% 
    arrange(desc(abs(gamma)))
  
  
  return(prcc)
}