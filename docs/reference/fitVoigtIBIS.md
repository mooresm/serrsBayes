# Fit the model with Voigt peaks using iterated batch importance sampling (IBIS).

Fit the model with Voigt peaks using iterated batch importance sampling
(IBIS).

## Usage

``` r
fitVoigtIBIS(
  wl,
  spc,
  n,
  lResult,
  conc = rep(1, nrow(spc)),
  batch = rep(1, nrow(spc)),
  npart = 10000,
  rate = 0.9,
  mcAR = 0.234,
  mcSteps = 20,
  minESS = npart/2,
  minPart = npart,
  destDir = NA
)
```

## Arguments

- wl:

  Vector of `nwl` wavenumbers at which the spetra are observed.

- spc:

  `n_y * nwl` Matrix of observed Raman spectra.

- n:

  index of the new observation

- lResult:

  List of results from the previous call to “fitVoigtPeaksSMC“ or
  “fitVoigtIBIS“

- conc:

  Vector of `n_y` nanomolar (nM) dye concentrations for each
  observation.

- batch:

  identifies to which batch each observation belongs

- npart:

  number of SMC particles to use for the importance sampling
  distribution.

- rate:

  the target rate of reduction in the effective sample size (ESS).

- mcAR:

  target acceptance rate for the MCMC kernel

- mcSteps:

  number of iterations of the MCMC kernel

- minESS:

  minimum effective sample size, below which the particles are
  resampled.

- minPart:

  target number of unique particles for the MCMC iterations

- destDir:

  destination directory to save intermediate results (for long-running
  computations)

## References

Chopin (2002) "A Sequential Particle Filter Method for Static Models,"
Biometrika 89(3): 539–551,
[doi:10.1093/biomet/89.3.539](https://doi.org/10.1093/biomet/89.3.539)
