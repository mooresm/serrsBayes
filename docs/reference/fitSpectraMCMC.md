# Fit the model using Markov chain Monte Carlo.

Fit the model using Markov chain Monte Carlo.

## Usage

``` r
fitSpectraMCMC(wl, spc, peakWL, lPriors, sd_mh, niter = 10000, nchains = 4)
```

## Arguments

- wl:

  Vector of `nwl` wavenumbers at which the spetra are observed.

- spc:

  `n_y * nwl` Matrix of observed Raman spectra.

- peakWL:

  Vector of locations for each peak (cm^-1)

- lPriors:

  List of hyperparameters for the prior distributions.

- sd_mh:

  Vector of `2 * npeaks` bandwidths for the random walk proposals.

- niter:

  number of MCMC iterations per chain.

- nchains:

  number of concurrent MCMC chains.

## Value

a List containing MCMC samples for the model parameters:

- `amplitude`:

  `niter * nchains * npeaks` Array of amplitudes.

- `scale`:

  `niter * nchains * npeaks` Array of scale parameters.

- `sigma`:

  `niter * nchains` Matrix of standard deviations.

- `n_acc`:

  The number of RWMH proposals that were accepted.

## See also

[`marginalMetropolisUpdate`](https://mooresm.github.io/serrsBayes/reference/marginalMetropolisUpdate.md)

## Examples

``` r
wavenumbers <- seq(200,600,by=10)
spectra <- matrix(nrow=1, ncol=length(wavenumbers))
peakLocations <- c(300,500)
peakAmplitude <- c(10000,4000)
peakScale <- c(10, 15)
signature <- weightedLorentzian(peakLocations, peakScale, peakAmplitude, wavenumbers)
baseline <- 1000*cos(wavenumbers/200) + 2*wavenumbers
spectra[1,] <- signature + baseline + rnorm(length(wavenumbers),0,200)
lPriors <- list(scale.mu=log(11.6) - (0.4^2)/2, scale.sd=0.4, bl.smooth=10^11, bl.knots=20,
                amp.mu=5000, amp.sd=5000, noise.sd=200, noise.nu=4)
rw_bw <- c(100, 100, 2, 2)
result <- fitSpectraMCMC(wavenumbers, spectra, peakLocations, lPriors, rw_bw, 500)
#> [1] "MCMC with 1 observations of 2 peaks at 41 wavenumbers."
#> [1] "Step 0: computing 20 B-spline basis functions took 0.0379999999999994 sec."
#> [1] "Step 1: initialization took 0.00100000000000033 sec for 4 parallel chains."
result$n_acc
#> [1] 769
```
