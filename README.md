

<!-- README.md is generated from README.qmd. Please edit that file -->

# ggsegAal <img src='man/figures/logo.png' align="right" height="138.5" />

<!-- badges: start -->

[![R-CMD-check](https://github.com/ggsegverse/ggsegAal/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/ggsegverse/ggsegAal/actions/workflows/R-CMD-check.yaml)
[![r-universe](https://ggseg.r-universe.dev/badges/ggsegAAL.png)](https://ggseg.r-universe.dev/ggsegAAL)
<!-- badges: end -->

This package contains the AAL (Automated Anatomical Labeling) atlas for
the [ggseg](https://ggseg.github.io/ggseg/) plotting packages.

Rolls ET, Joliot M, & Tzourio-Mazoyer N (2015). Implementation of a new
parcellation of the orbitofrontal cortex in the automated anatomical
labeling atlas. *Neuroimage*, 122, 1-5.

## Installation

We recommend installing the ggseg-atlases through the ggseg
[r-universe](https://ggseg.r-universe.dev/ui#builds):

``` r
options(repos = c(
  ggseg = "https://ggseg.r-universe.dev",
  CRAN = "https://cloud.r-project.org"
))

install.packages("ggsegAAL")
```

You can install this package from [GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("ggsegverse/ggsegAal")
```

## AAL atlas

``` r
library(ggseg)
library(ggsegAAL)

plot(aal())
```

<img src="man/figures/README-aal-1.png" style="width:100.0%" />

## AAL2 atlas

``` r
plot(aal2())
```

<img src="man/figures/README-aal2-1.png" style="width:100.0%" />

## AAL3 cortical atlas

``` r
plot(aal3_cortical())
```

<img src="man/figures/README-aal3-cortical-1.png"
style="width:100.0%" />

## AAL3 subcortical atlas

``` r
plot(aal3_subcortical())
```

<img src="man/figures/README-aal3-subcortical-1.png"
style="width:100.0%" />

## AAL3 cerebellum atlas

``` r
plot(aal3_cerebellum())
```

<img src="man/figures/README-aal3-cerebellum-1.png"
style="width:100.0%" />

## Data source

Rolls ET, Huang CC, Lin CP, Feng J, & Joliot M (2020). Automated
anatomical labelling atlas 3. *Neuroimage*, 206, 116189.
