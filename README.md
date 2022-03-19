# BinMat R Package
[![DOI](https://zenodo.org/badge/238669382.svg)](https://zenodo.org/badge/latestdoi/238669382)

<img src="https://github.com/clarkevansteenderen/BinMat/blob/master/www/clevercow.png" height = 120>

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

# Download the R package

## 💡 CRAN

https://cran.r-project.org/web/packages/BinMat/index.html

Please see the associated vignette for detailed descriptions of all the functions, and worked examples:

https://cran.r-project.org/web/packages/BinMat/vignettes/BinMat.html

## 💡 FROM THE GITHUB REPOSITORY

```{r}
devtools::install_github("clarkevansteenderen/BinMat_R")
```

# Access the package as an R Shiny application:

## 💡 VIA THE SHINY APPS SERVER:    

https://clarkevansteenderen.shinyapps.io/BINMAT/

## 💡 VIA THE GITHUB REPOSITORY:     

```{r}
install.packages("shiny")
library(shiny)
shiny::runGitHub("BinMat", "clarkevansteenderen")
```

## ⭐ BinMat has been accepted in the Biodiversity Data Journal:

van Steenderen, C. 2022. BinMat: A molecular genetics tool for processing binary data obtained from fragment analysis in R. **Biodiversity Data Journal** 10: e77875. https://doi.org/10.3897/BDJ.10.e77875

Please cite this article if you use the program.
