## Simulate data
example_parameters <- tibble::tibble(id = 1:10, beta = rnorm(10, 100, 10), 
                                     alpha = rnorm(10, 100, 1), gamma = rnorm(10, 100, 10))


# Add to package ----------------------------------------------------------

readr::write_csv(example_parameters, "example_parameters.csv")
usethis::use_data(example_parameters, overwrite = TRUE)
