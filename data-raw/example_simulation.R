## Simulate data
example_simulation <- tibble::tibble(id = 1:10, intervention = rep(c("baseline"), 10),
                                         S = rnorm(10, 100, 10), I = rnorm(10, 100, 1), R = rnorm(10, 100, 10))


# Add to package ----------------------------------------------------------

readr::write_csv(example_simulation, "example_simulation.csv")
usethis::use_data(example_simulation, overwrite = TRUE)
