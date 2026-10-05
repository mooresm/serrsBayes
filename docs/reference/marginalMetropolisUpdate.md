# Update all of the parameters using a single Metropolis-Hastings step.

Updates all of the parameters using a single Metropolis-Hastings step,
such that the baseline cancels out in the MH ratio, using the
marginalisation identity of Chib (1995). If `npart > 1`, then multiple
MCMC chains will be executed independently in parallel using OpenMP.
This means that all functions used for the proposal distributions and to
evaluate the MH ratio need to be thread-safe. Specifically, no calls to
`R::rnorm`, `R::dnorm`, nor their Rcpp equivalents, can be made from
within the parallel portion of the code.

## Usage

``` r
marginalMetropolisUpdate(
  spectra,
  n,
  conc,
  wavelengths,
  peakWL,
  betaMx,
  scaleMx,
  sigma,
  expMx,
  baselines,
  sd_mh,
  priors
)
```

## Arguments

- spectra:

  `n_y * nwl` Matrix of observed Raman spectra.

- n:

  number of observations to use in calculating the likelihood

- conc:

  Vector of `n` nanomolar (nM) dye concentrations

- wavelengths:

  Vector of `nwl` wavenumbers at which the spetra are observed.

- peakWL:

  Vector of locations for each peak (cm^-1)

- betaMx:

  `npeaks * npart` Matrix of regression coefficients to update.

- scaleMx:

  `npeaks * npart` Matrix of scale parameters to update.

- sigma:

  Vector of `npart` standard deviations to update.

- expMx:

  `nwl * npart` Matrix of expectations of the Lorentzian or Gaussian
  function.

- baselines:

  `nKnots * n_y * npart` Array of smoothing splines.

- sd_mh:

  Vector of `2 * npeaks` bandwidths for the random walk proposals.

- priors:

  List of hyperparameters for the prior distributions.

## Value

The number of RWMH proposals that were accepted.

## References

Chib (1995) "Marginal Likelihood from the Gibbs Output," JASA 90(432):
1313–1321,
[doi:10.1080/01621459.1995.10476635](https://doi.org/10.1080/01621459.1995.10476635)

Rosenthal (2000) "Parallel computing and Monte Carlo algorithms" Far
East J. Theor. Stat. 4(2): 207–236, URL:
<https://www.pphmj.com/abstract/1961.htm>
