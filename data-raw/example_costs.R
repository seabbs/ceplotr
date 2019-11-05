

## Simulate data
example_costs <- tibble::tibble(id = 1:10, intervention = rep(c("baseline"), 10),
                        S = rnorm(10, 2, 1), I = rnorm(10, 2, 1), R = rnorm(10, 2, 1))


# Add to package ----------------------------------------------------------

readr::write_csv(example_costs, "example_costs.csv")
usethis::use_data(example_costs, overwrite = TRUE)
