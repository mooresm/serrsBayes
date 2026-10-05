# Compute the spectral signature using Voigt peaks.

Calculates the value of the pseudo-Voigt broadening function at the
given wavenumbers, given the parameters of the peaks. This function is
thread-safe.

## Usage

``` r
mixedVoigt(location, scale_G, scale_L, amplitude, wavenum)
```

## Arguments

- location:

  Vector of location parameters of the peaks (\\cm^{-1}\\)

- scale_G:

  Vector of standard deviations \\\sigma_j\\ of the Gaussian components.

- scale_L:

  Vector of scale parameters \\\phi_j\\ of the Lorentzian components.

- amplitude:

  Vector of amplitudes of the peaks (a.u.)

- wavenum:

  Vector of wavenumbers at which to compute the function.

## Value

The value of the pseudo-Voigt function at the given wavenumbers.

## References

Thompson, Cox & Hastings (1987) "Rietveld refinement of Debye–Scherrer
synchrotron X-ray data from \\Al_2 O_3\\," J. Appl. Crystallogr. 20(2):
79–83, DOI:
[doi:10.1107/S0021889887087090](https://doi.org/10.1107/S0021889887087090)

## Examples

``` r
  Cal_V <- seq(300,400,by=5)
  loc <- c(320,350,375)
  scG <- c(10,5,1)
  scL <- c(3,20,7)
  amp <- c(100,500,200)
  mixedVoigt(loc,scG,scL,amp,Cal_V)
#>  [1] 160.2766 193.5083 230.8420 272.0324 316.8996 365.3277 416.7873 469.0559
#>  [9] 516.4728 549.4013 557.7339 538.6236 502.5276 472.6569 474.5347 470.2952
#> [17] 360.9865 249.3725 179.7727 136.8177 108.1071
```
