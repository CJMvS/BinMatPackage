# BinMat R Package
[![DOI](https://zenodo.org/badge/238669382.svg)](https://zenodo.org/badge/latestdoi/238669382)

Processing and visualizing trends in the binary data obtained from fragment
analysis methods (such as AFLP and ISSR) in molecular biology can be a
time-consuming, and cumbersome process. It entails complex work
flows that
require a high level of computational and/or bioinformatic skills. The application
presented here, "BinMat", is a free, open-source, and user-friendly
R package and Shiny program that automates the analysis pipeline on one
platform. BinMat consolidates replicate sample pairs of binary data from
dominant markers into consensus reads, produces peak summary statistics,
and allows the user to visualize their data as ordination plots and clustering
trees without having to use multiple software programs and input files, or
rely on previous programming experience.

The package is available on CRAN:

https://cran.r-project.org/web/packages/BinMat/index.html

Please see the associated vignette for detailed descriptions of all the functions, and worked examples:

https://cran.r-project.org/web/packages/BinMat/vignettes/BinMat.html

The R Shiny application version of this package is available here:

https://clarkevansteenderen.shinyapps.io/BINMAT/

Install in R:

```{r}
devtools::install_github("clarkevansteenderen/BinMat_R")
```
