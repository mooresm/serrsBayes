# Compute the spectral signature using Gaussian peaks.

Calculates the value of the squared exponential radial basis function at
the given wavelengths, given the parameters of the peaks. This function
is thread-safe.

## Usage

``` r
weightedGaussian(location, scale, amplitude, wavelengths)
```

## Arguments

- location:

  Vector of location parameters of the peaks (mean).

- scale:

  Vector of scale parameters of the peaks (standard deviation).

- amplitude:

  Vector of amplitudes of the peaks.

- wavelengths:

  Vector of wavenumbers at which to compute the function.

## Value

The value of the Gaussian function at the given wavelengths.

## Examples

``` r
  Cal_V <- seq(300,400,by=5)
  loc <- c(320,350,375)
  sca <- c(10,5,18)
  amp <- c(1000,5000,2000)
  weightedGaussian(loc,sca,amp,Cal_V)
#>  [1]  135.6750  325.6924  609.4778  890.2287 1018.7782  924.7348  696.0818
#>  [8]  549.5134 1114.0248 3575.2946 5773.4518 4113.6558 2090.3084 1769.5788
#> [15] 1925.9900 2000.0189 1924.3091 1713.9938 1413.2966 1078.8150  762.3428
```
