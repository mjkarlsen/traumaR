
<!-- README.md is generated from README.Rmd. Please edit that file -->

# traumaR <img src='man/figures/logo.png' align="right" height="139" />

<!-- badges: start -->

[![](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- [![](https://img.shields.io/badge/download-NA/total-blue.svg)](https://bioconductor.org/packages/stats/bioc/traumaR) -->
<!-- badges: end -->

The goal of traumaR is to provide users with human friendly results in a
normalized format.

## Installation

You can install the released version of traumaR from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("traumaR")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("ultramattyice/traumaR")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
# library(traumaR)
# 
# raw_data <- data.table::fread("E:/Northwestern/12 - Capstone/PTOS_Data_toy.csv", na.strings = c("<unk>", "", "<n/a>"))
# 
# traumaR::run_full_show(raw_data)
```

### Example of Patient Data Output

``` r
# patient_df %>% head(10)
```

### Example of Procedures, Diagnosis & Complications Dataframe

``` r
# trans_full_df %>% head(10)
```
