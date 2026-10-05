# Resample in place to avoid expensive copying of data structures, using a permutation of the ancestry vector.

Resample in place to avoid expensive copying of data structures, using a
permutation of the ancestry vector.

## Usage

``` r
resampleParticles(log_weights, ampMx, scaleMx, peaks, baselines, n_y, nwl)
```

## Arguments

- log_weights:

  logarithms of the importance weights of each particle

- ampMx:

  `npeaks x npart` Matrix of amplitudes for each particle.

- scaleMx:

  `npeaks x npart` Matrix of scale parameters for each particle.

- peaks:

  `nwl x npart` Matrix containing the expectation of the Lorentzian
  mixture.

- baselines:

  `nwl x n_y x npart` Array of smoothing splines.

- n_y:

  number of observations

- nwl:

  number of wavenumbers

## Value

Vector of indices to the parents of the resampled particles.

## References

Murray, L.M., Lee, A. & Jacob, P.E. (2015) "Parallel resampling in the
particle filter" [arXiv:1301.4019v3](https://arxiv.org/abs/1301.4019)

## See also

[`residualResampling`](https://mooresm.github.io/serrsBayes/reference/residualResampling.md)
