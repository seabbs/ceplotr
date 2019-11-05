## Simulate data
example_health_utility <- tibble::tibble(id = 1:10, intervention = rep(c("baseline"), 10),
                        S = rnorm(10, 2, 1), I = rnorm(10, 2, 1), R = rnorm(10, 2, 1))


# Add to package ----------------------------------------------------------

readr::write_csv(example_health_utility, "example_health_utility.csv")
usethis::use_data(example_health_utility, overwrite = TRUE)
