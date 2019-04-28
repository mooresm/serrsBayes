# serrsBayes 0.4-0

* Fixed **bug** in ``fitVoigtPeaksSMC`` where it was using the upper-triangular instead of lower-triangular Cholesky factorisation to generate random-walk Metropolis proposals
* New vignette illustrates when to use the 3 functions `fitSpectraMCMC`, `fitSpectraSMC`, and `fitVoigtPeaksSMC`
* New methanol dataset for the vignette
* Deleted unused Rcpp function randomWalkVoigt

# serrsBayes 0.3-14

* OpenMP implementation of mhUpdateVoigt provides 3x improvement in elapsed runtime

# serrsBayes 0.3-13

* changed maintainer email address due to new academic affiliation
* hex sticker in README

# serrsBayes 0.3-12

## New Features

* Vignette with example for tetramethylrhodamine (TAMRA)
* pkgdown website https://mooresm.github.io/serrsBayes/

## Bug Fixes

* Fixed compile errors on Solaris

# serrsBayes 0.3-10

* First version released on CRAN
