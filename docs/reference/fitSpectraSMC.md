# Fit the model using Sequential Monte Carlo (SMC).

Fit the model using Sequential Monte Carlo (SMC).

## Usage

``` r
fitSpectraSMC(
  wl,
  spc,
  peakWL,
  lPriors,
  conc = rep(1, nrow(spc)),
  npart = 10000,
  rate = 0.9,
  minESS = npart/2,
  destDir = NA
)
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

- conc:

  Vector of `n_y` nanomolar (nM) dye concentrations for each
  observation.

- npart:

  number of SMC particles to use for the importance sampling
  distribution.

- rate:

  the target rate of reduction in the effective sample size (ESS).

- minESS:

  minimum effective sample size, below which the particles are
  resampled.

- destDir:

  destination directory to save intermediate results (for long-running
  computations)

## Value

a List containing weighted parameter values, known as particles:

- `weights`:

  Vector of importance weights for each particle.

- `beta`:

  `npart * npeaks` Matrix of regression coefficients for the amplitudes.

- `scale`:

  `npart * npeaks` Matrix of scale parameters.

- `sigma`:

  Vector of `npart` standard deviations.

- `alpha`:

  `bl.knots * n_y * npart` Array of spline coefficients for the
  baseline.

- `basis`:

  A dense `nwl * bl.knots` Matrix containing the values of the basis
  functions.

- `expFn`:

  `npart * nwl` Matrix containing the spectral signature.

- `ess`:

  Vector containing the effective sample size (ESS) at each SMC
  iteration.

- `logEvidence`:

  Vector containing the logarithm of the model evidence (marginal
  likelihood).

- `accept`:

  Vector containing the Metropolis-Hastings acceptance rate at each SMC
  iteration.

- `sd.mh`:

  `niter * 2npeaks` Matrix of random walk MH bandwidths at each SMC
  iteration..

## References

Chopin (2002) "A Sequential Particle Filter Method for Static Models,"
Biometrika 89(3): 539–551,
[doi:10.1093/biomet/89.3.539](https://doi.org/10.1093/biomet/89.3.539)

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
                beta.mu=5000, beta.sd=5000, noise.sd=200, noise.nu=4)
if (FALSE) { # \dontrun{
result <- fitSpectraSMC(wavenumbers, spectra, peakLocations, lPriors, npart=500)
} # }
```
