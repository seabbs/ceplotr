
# `{ceplotr}`: Model agnostic plotting for cost effectiveness analysis <img src="man/figures/logo.png" align="right" alt="" width="120" />

[![badge](https://img.shields.io/badge/Launch-ceplotr-blue.svg)](https://mybinder.org/v2/gh/seabbs/ceplotr/master?urlpath=rstudio)
[![CRAN\_Release\_Badge](http://www.r-pkg.org/badges/version-ago/ceplotr)](https://CRAN.R-project.org/package=ceplotr)
[![develVersion](https://img.shields.io/badge/devel%20version-0.1.0-blue.svg?style=flat)](https://github.com/seabbs/ceplotr)
[![DOI](https://zenodo.org/badge/219757940.svg)](https://zenodo.org/badge/latestdoi/219757940)
[![metacran monthly
downloads](http://cranlogs.r-pkg.org/badges/ceplotr)](https://cran.r-project.org/package=ceplotr)
[![metacran
downloads](http://cranlogs.r-pkg.org/badges/grand-total/ceplotr?color=ff69b4)](https://cran.r-project.org/package=ceplotr)

This package aims to:

  - Provide standarised modular plotting functions for cost
    effectiveness analysis.
  - Support a single data format which is model and application
    agnostic.
  - Provide data transformation tooling to support cost effectiveness
    analysis.
  - Support converting model simulations, costs, etc. into this standard
    format.
  - Provide detailed documentation of all functionality.
  - Support interactive use via an interface.
  - Be modular, user modfiable and extendable.
  - Be fully tested, reliable and easy to use.

For help getting started see the [Getting
Started](https://www.samabbott.co.uk/ceplotr/articles/intro.html)
vignette.

## Installation

Install the CRAN version (when released):

``` r
install.packages("ceplotr")
```

Alternatively install the development version from GitHub:

``` r
# install.packages("remotes")
remotes::install_github("seabbs/ceplotr")
```

## Documentation

[![Documentation](https://img.shields.io/badge/Documentation-release-lightgrey.svg?style=flat)](https://www.samabbott.co.uk/ceplotr/)
[![Development
documentation](https://img.shields.io/badge/Documentation-development-lightblue.svg?style=flat)](https://www.samabbott.co.uk/ceplotr/dev)
[![Getting
started](https://img.shields.io/badge/Documentation-getting%20started-yellow.svg?style=flat)](https://www.samabbott.co.uk/ceplotr/articles/intro.html)
[![Functions](https://img.shields.io/badge/Documentation-functions-orange.svg?style=flat)](https://www.samabbott.co.uk/ceplotr/reference/index.html)

## Testing

[![Travis-CI Build
Status](https://travis-ci.org/seabbs/ceplotr.svg?branch=master)](https://travis-ci.org/seabbs/ceplotr)
[![AppVeyor Build
Status](https://ci.appveyor.com/api/projects/status/github/seabbs/ceplotr?branch=master&svg=true)](https://ci.appveyor.com/project/seabbs/ceplotr)
[![Coverage
Status](https://img.shields.io/codecov/c/github/seabbs/ceplotr/master.svg)](https://codecov.io/github/seabbs/ceplotr?branch=master)

## Quick start

Lets get started quickly by

See
[Functions](https://www.samabbott.co.uk/ceplotr/reference/index.html)
for more details of the functions used and for more package
functionality.

## Shiny dashboard

``` r
ceplotr::cd_dashboard()
```

## Contributing

File an issue [here](https://github.com/seabbs/ceplotr/issues) if there
is a feature that you think is missing from the package, or better yet
submit a pull request.

Please note that the `ceplotr` project is released with a [Contributor
Code of
Conduct](https://github.com/seabbs/ceplotr/blob/master/.github/CODE_OF_CONDUCT.md).
By contributing to this project, you agree to abide by its terms.

## Citing

If using `ceplotr` please consider citing the package in the relevant
work. Citation information can be generated in R using the following
(after installing the package),

``` r
citation("ceplotr")
#> 
#> To cite ceplotr in publications use:
#> 
#>   Sam Abbott (2019). ceplotr - -
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Article{,
#>     title = {ceplotr},
#>     author = {Sam Abbott},
#>     journal = {-},
#>     year = {2019},
#>   }
```

## Docker

This package has been developed in docker based on the
`rocker/tidyverse` image, to access the development environment enter
the following at the command line (with an active docker daemon
running),

``` bash
docker pull seabbs/ceplotr
docker run -d -p 8787:8787 -e USER=ceplotr -e PASSWORD=ceplotr --name getTBinR seabbs/ceplotr
```

The rstudio client can be accessed on port `8787` at `localhost` (or
your machines ip). The default username is ceplotr and the default
password is ceplotr. Alternatively, access the development environment
via
[binder](https://mybinder.org/v2/gh/seabbs/ceplotr/master?urlpath=rstudio).
