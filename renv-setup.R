#!/usr/bin/env Rscript

options(repos=structure(c(CRAN="http://cran.r-project.org")))

args <- commandArgs(trailingOnly = TRUE)
setwd(args[1])

install.packages("renv")
renv::activate()
renv::restore()
renv::isolate()
