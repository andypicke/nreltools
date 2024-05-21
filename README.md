
<!-- README.md is generated from README.Rmd. Please edit that file -->

# nreltools

<!-- badges: start -->

[![R-CMD-check](https://github.com/andypicke/nreltools/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/andypicke/nreltools/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

[nreltools](https://github.com/andypicke/nreltools) provides functions
for working with APIs and tools from the [NREL Developer
Network](\https://developer.nrel.gov/) in R.

To use the tools you will need to [sign up for a free API
key](https://developer.nrel.gov/signup/). The package functions assume
by defauls that you have stored your API Key as “NREL_DEVELOPER_API_KEY”
in you .Renviron file.

## Installation

You can install the development version of nreltools like so:

``` r
# install.packages("devtools")
devtools::install_github("andypicke/nreltools")
#> Using GitHub PAT from the git credential store.
#> Downloading GitHub repo andypicke/nreltools@HEAD
#> 
#> ── R CMD build ─────────────────────────────────────────────────────────────────
#> * checking for file ‘/private/var/folders/dr/yjpc9xm95sb7_d0czp37sqb00000gn/T/Rtmp1aqJnL/remotesede24d7218dd/andypicke-nreltools-580a902/DESCRIPTION’ ... OK
#> * preparing ‘nreltools’:
#> * checking DESCRIPTION meta-information ... OK
#> * checking for LF line-endings in source and make files and shell scripts
#> * checking for empty or unneeded directories
#> * building ‘nreltools_0.0.0.9000.tar.gz’
#> Installing package into '/private/var/folders/dr/yjpc9xm95sb7_d0czp37sqb00000gn/T/RtmppFWCrg/temp_libpathddc85342798c'
#> (as 'lib' is unspecified)
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(nreltools)
## basic example code
```
