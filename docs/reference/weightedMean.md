# Compute the weighted arithmetic means of the particles.

This SMC estimate of the means can be used to centre independent
Metropolis-Hastings proposals.

## Usage

``` r
weightedMean(particles, log_weights)
```

## Arguments

- particles:

  `npeaks * npart` Matrix of parameter values for each particle.

- log_weights:

  logarithms of the importance weights of each particle.

## Value

A vector of means, one for each row.

## See also

[`weighted.mean`](https://rdrr.io/r/stats/weighted.mean.html)
