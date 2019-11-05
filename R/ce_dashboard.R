#' Run a Cost Effectiveness Interactive Dashboard
#'
#' @description This functions runs a dashboard that can be used to plot the results of cost effectiveness analysis. 
#' 
#' @return Starts a shiny dashboard
#' @export
#' @importFrom utils installed.packages
#' @examples
#' 
#' ## Only run the example if in an interative session
#' \dontrun{
#' 
#' ## Run the dashboard
#' ce_dashboard()
#' }
ce_dashboard <- function() {
  
  required_packages <- c("shiny", "ceplotr")
  
  
  not_present <- sapply(required_packages, function(package) {
    
    not_present <- !(package %in% rownames(installed.packages()))
    
    if (not_present) {
      message(paste0(package,
                     " is required to use ce_dashboard, please install it before using this function"))
    }
    
    return(not_present)
  }
  )
  
  if (any(not_present)) {
    stop("Packages required for this dashboard are not installed, 
         please use the following code to install the required packages \n\n 
         install.packages(c('", paste(required_packages[not_present], collapse = "', '"), "'))")
  }
  
  appDir <- system.file("shiny", "ce_dashboard", package = "ceplotr")
  if (appDir == "") {
    stop("Could not find the ce_dashboard directory. Try re-installing `ceplotr`.", call. = FALSE)
  }
  
  shiny::runApp(appDir, display.mode = "normal")
}