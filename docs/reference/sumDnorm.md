# Sum log-likelihoods of Gaussian.

This is an internal function that is only exposed on the public API for
unit testing purposes.

## Usage

``` r
sumDnorm(x, mean, sd)
```

## Arguments

- x:

  Vector of i.i.d. Gaussian random varibles

- mean:

  Vector of means

- sd:

  Vector of standard deviations

## Value

log-likelihood of x

## Details

The sum of the log-likelihoods (log of the product of the likelihoods)
for independent, identically-distributed, Gaussian random variables.
Note: this Rcpp function is thread-safe, unlike the equivalent
alternatives.

## See also

`sum(dnorm(x, mean, sd, log=TRUE))`

## Examples

``` r
  x <- rnorm(100)
  mu <- rep(0,length(x))
  sd <- rep(1,length(x))
  sumDnorm(x,mu,sd)
#> [1] -141.4645
```
