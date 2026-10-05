# Sum log-likelihoods of i.i.d. lognormal.

This is an internal function that is only exposed on the public API for
unit testing purposes.

## Usage

``` r
sumDlogNorm(x, meanlog, sdlog)
```

## Arguments

- x:

  Vector of i.i.d. lognormal random varibles

- meanlog:

  mean of the distribution on the log scale

- sdlog:

  standard deviation on the log scale

## Value

log-likelihood of x

## Details

The sum of the log-likelihoods (log of the product of the likelihoods)
for independent, identically-distributed, lognormal random variables.
Note: this Rcpp function is thread-safe, unlike the equivalent
alternatives.

## See also

`sum(dlnorm(x, meanlog, sdlog, log=TRUE))`

## Examples

``` r
x <- rlnorm(100)
sumDlogNorm(x,0,1)
#> [1] -147.7198
```
