# Update the importance weights of each particle.

Update the importance weights of each particle.

## Usage

``` r
reWeightParticles(
  spectra,
  peaks,
  baselines,
  i,
  start,
  sigma,
  old_weights,
  alpha,
  idx
)
```

## Arguments

- spectra:

  `n_y * nwl` Matrix of observed Raman spectra.

- peaks:

  `nwl * npart` Matrix containing the spectral signatures for each
  observation.

- baselines:

  `nwl * npart` Matrix containing the current values of the baselines.

- i:

  index of the current observation to use in calculating the likelihood

- start:

  index of the next wavelength to use in calculating the likelihood,
  permuted by `idx`

- sigma:

  Vector of `npart` standard deviations for each particle.

- old_weights:

  logarithms of the importance weights of each particle.

- alpha:

  the target learning rate for the reduction in effective sample size
  (ESS).

- idx:

  permutation of the indices of the wavelengths.

## Value

a List containing:

- `ess`:

  The effective sample size, after reweighting.

- `weights`:

  Vector of updated importance weights.

- `index`:

  index of the last wavelength used.

- `evidence`:

  SMC estimate of the logarithm of the model evidence.

## References

Pitt, dos Santos Silva, Giordani & Kohn (2012) "On some properties of
Markov chain Monte Carlo simulation methods based on the particle
filter" J. Econometrics 171(2): 134–151, DOI:
[doi:10.1016/j.jeconom.2012.06.004](https://doi.org/10.1016/j.jeconom.2012.06.004)

Zhou, Johansen & Aston (2015) "Towards Automatic Model Comparison: An
Adaptive Sequential Monte Carlo Approach"
[arXiv:1303.3123](https://arxiv.org/abs/1303.3123) \[stat.ME\]
