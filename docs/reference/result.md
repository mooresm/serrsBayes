# SMC particles for TAMRA+DNA (T20)

Posterior distribution for pseudo-Voigt parameters, obtained by running
\`fitVoigtPeaksSMC\` on a spectrum from Gracie et al. (Anal. Chem.,
2016). 1000 SMC particles with 32 peaks. For details, see the vignette.

## Usage

``` r
result
```

## Format

A list containing 15 variables:

- weights:

  normalised importance weights for each particle

- location:

  location parameters of 32 peaks

- beta:

  amplitudes of 32 peaks

- scale_G:

  scale of the Gaussian (RBF) broadening

- scale_L:

  scale of the Lorentzian (Cauchy) broadening

- sigma:

  standard deviation of the additive white noise

- lambda:

  smoothing parameter of the cubic B-splines

- priors:

  List of informative priors

- ess:

  history of the effective sample size

- kappa:

  history of the likelihood tempering

- accept:

  history of Metropolis-Hastings acceptance rates

- mhSteps:

  history of Metropolis-Hastings steps

- times:

  history of times for each SMC iteration

- time:

  computation time taken by the SMC algorithm
