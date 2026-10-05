# Compute the spectral signature using Lorentzian peaks.

Calculates the value of the Lorentzian function at the given
wavelengths, given the parameters of the peaks. This function is
thread-safe.

## Usage

``` r
weightedLorentzian(location, scale, amplitude, wavelengths)
```

## Arguments

- location:

  Vector of location parameters of the peaks.

- scale:

  Vector of scale parameters of the peaks.

- amplitude:

  Vector of amplitudes of the peaks.

- wavelengths:

  Vector of wavenumbers at which to compute the function.

## Value

The value of the Lorentian function at the given wavelengths.

## Examples

``` r
  Cal_V <- seq(300,400,by=5)
  loc <- c(320,350,375)
  sca <- c(10,5,18)
  amp <- c(1000,5000,2000)
  weightedLorentzian(loc,sca,amp,Cal_V)
#>  [1]  358.4308  492.7108  719.3720 1065.1376 1328.6257 1221.7694 1069.9797
#>  [8] 1144.4906 1618.3344 3167.3428 5782.8240 3470.4993 2239.1514 2075.3607
#> [15] 2189.3127 2224.3077 2018.8957 1651.4233 1277.2509  973.4705  747.7136
```
