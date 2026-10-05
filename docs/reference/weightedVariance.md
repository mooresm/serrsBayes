# Compute the weighted variance of the particles.

This SMC estimate of the variance can be used to scale the bandwidth of
adaptive, Gaussian random walk Metropolis-Hastings proposals.

## Usage

``` r
weightedVariance(particles, log_weights, mean)
```

## Arguments

- particles:

  `npeaks * npart` Matrix of parameter values for each particle.

- log_weights:

  logarithms of the importance weights of each particle.

- mean:

  Vector of weighted means of each particle.

## Value

A vector of variances, one for each row.

## See also

`wtd.var`
