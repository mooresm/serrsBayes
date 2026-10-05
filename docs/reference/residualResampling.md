# Compute an ancestry vector for residual resampling of the SMC particles.

Compute an ancestry vector for residual resampling of the SMC particles.

## Usage

``` r
residualResampling(log_wt)
```

## Arguments

- log_wt:

  logarithms of the importance weights of each particle.

## Value

Vector of indices to the particles that will be propagated forward to
the next generation (i.e. the parents)

## References

Liu & Chen (1998) "Sequential Monte Carlo methods for dynamic systems,"
JASA 93(443): 1032-1044,
[doi:10.1080/01621459.1998.10473765](https://doi.org/10.1080/01621459.1998.10473765)

Douc, Cappe & Moulines (2005) "Comparison of resampling schemes for
particle filtering" In Proc. 4th IEEE Int. Symp. ISPA, pp. 64-69,
[doi:10.1109/ISPA.2005.195385](https://doi.org/10.1109/ISPA.2005.195385)
