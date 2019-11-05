#' Test cost sensitivity using PRCC
#'
#' @param df A dataframe
#' @param obs A character string containing the observation to use to calculate the PRCC.
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
test_prcc <- function(df = NULL, obs = NULL, target_time = NULL) {
  
  time <- NULL; value <- NULL; Parameter <- NULL; p.value <- NULL;

  params <- df %>% 
    dplyr::filter(time == target_time) %>% 
    select_if(~ var(.) > 0)
  
  ## Join obs to parameters
  sample <- params %>% 
    bind_cols(obs %>% 
                select(value) %>% 
                setNames("Observation"))
  
  prcc <- epi.prcc(sample) %>% 
    mutate(Parameter = colnames(params)) %>% 
    select(Parameter, gamma, p.value) %>% 
    arrange(desc(abs(gamma)))
  
  
  return(prcc)
}