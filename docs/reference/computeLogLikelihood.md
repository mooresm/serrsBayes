# Compute the log-likelihood.

This is an internal function that is only exposed on the public API for
unit testing purposes. It computes the log-likelihood of the spline and
the noise, once the spectral signature has been subtracted from the
observed data. Thus, it can be used with either Lorentzian, Gaussian, or
pseudo-Voigt broadening functions.

## Usage

``` r
computeLogLikelihood(
  obsi,
  lambda,
  prErrNu,
  prErrSS,
  basisMx,
  eigVal,
  precMx,
  xTx,
  aMx,
  ruMx
)
```

## Arguments

- obsi:

  Vector of residuals after the spectral signature has been subtracted.

- lambda:

  smoothing parameter of the penalised B-spline.

- prErrNu:

  hyperparameter of the additive noise

- prErrSS:

  hyperparameter of the additive noise

- basisMx:

  Matrix of B-spline basis functions

- eigVal:

  eigenvalues of the Demmler-Reinsch factorisation

- precMx:

  precision matrix for the spline

- xTx:

  sparse matrix cross-product

- aMx:

  orthoganal matrix A from the Demmler-Reinsch factorisation

- ruMx:

  product of Ru from the Demmler-Reinsch factorisation

## Value

The logarithm of the likelihood.
