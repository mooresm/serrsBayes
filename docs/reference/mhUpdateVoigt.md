# Update the parameters of the Voigt peaks using marginal Metropolis-Hastings.

Updates all of the parameters (location, amplitude, std. dev., and
scale) using a single Metropolis- Hastings step, such that the baseline
cancels out in the MH ratio, using the marginalisation identity of Chib
(1995). Note: if `npart > 1`, then multiple MCMC chains will be executed
independently in parallel using OpenMP. This means that all functions
used for the proposal distributions and to evaluate the MH ratio need to
be thread-safe. Specifically, no calls to `R::rnorm`, `R::dnorm`, nor
their Rcpp equivalents, can be made from within the parallel portion of
the code.

## Usage

``` r
mhUpdateVoigt(
  spectra,
  n,
  kappa,
  conc,
  wavenum,
  thetaMx,
  logThetaMx,
  mhChol,
  priors
)
```

## Arguments

- spectra:

  `n_y * nwl` Matrix of observed Raman spectra.

- n:

  number of observations to use in calculating the likelihood.

- kappa:

  likelihood tempering parameter.

- conc:

  Vector of `n_y` nanomolar (nM) dye concentrations

- wavenum:

  Vector of `nwl` wavenumbers at which the spetra are observed.

- thetaMx:

  `(4+npeaks*4) x npart` Matrix of parameter values for each peak.

- logThetaMx:

  `(4+npeaks*4) x npart` Matrix of logarithms of the parameters.

- mhChol:

  lower-triangular Cholesky factorisation of the covariance matrix for
  the random walk proposals.

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
