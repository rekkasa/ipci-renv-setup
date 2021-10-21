#!/usr/bin/env Rscript

options(repos=structure(c(CRAN="http://cran.r-project.org")))

install.packages("renv")
renv::restore()
