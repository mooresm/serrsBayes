# Compute the effective sample size (ESS) of the particles.

The ESS is a "rule of thumb" for assessing the degeneracy of the
importance distribution: \$\$ESS = \frac{(\sum\_{q=1}^Q
w_q)^2}{\sum\_{q=1}^Q w_q^2}\$\$

## Usage

``` r
effectiveSampleSize(log_weights)
```

## Arguments

- log_weights:

  logarithms of the importance weights of each particle.

## Value

the effective sample size, a scalar between 0 and Q

## References

Liu, JS (2001) "Monte Carlo Strategies in Scientific Computing."
Springer, NY, pp. 34–36.

## Examples

``` r
x <- runif(100)
effectiveSampleSize(log(x))
#> [1] 74.85258
```
