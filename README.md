
<!-- README.md is generated from README.Rmd. Please edit that file -->
rmddm
=====

[![Build Status](https://travis-ci.org/wdavis12/rmddm.svg?branch=master)](https://travis-ci.org/wdavis12/rmddm) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/wdavis12/rmddm?branch=master&svg=true)](https://ci.appveyor.com/project/wdavis12/rmddm) [![codecov](https://codecov.io/gh/wdavis12/rmddm/branch/master/graph/badge.svg)](https://codecov.io/gh/wdavis12/rmddm)

Overview
--------

rmddm provides Rmarkdown templates for use in data mining, specifically those projects following the [CRISP-DM](https://en.wikipedia.org/wiki/Cross-industry_standard_process_for_data_mining) process. The package is based on the [rticles](https://github.com/rstudio/rticles) package.

Installation
------------

Installing rmddm from github with:

``` r
# install.packages("devtools")
devtools::install_github("wdavis12/rmddm")
```

Example
-------

Creating an RMarkdown template with the CRISP-DM structure:

``` r
library(rmarkdown)
draft("MyReport.Rmd", template = "crispdm_report", package = "rmddm", edit=FALSE)
```
