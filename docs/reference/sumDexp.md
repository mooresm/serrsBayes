# Sum log-likelihoods of i.i.d. exponential.

This is an internal function that is only exposed on the public API for
unit testing purposes.

## Usage

``` r
sumDexp(x, rate)
```

## Arguments

- x:

  Vector of i.i.d. exponential random varibles

- rate:

  parameter of the exponential distribution

## Value

log-likelihood of x

## Details

The sum of the log-likelihoods (log of the product of the likelihoods)
for independent, identically-distributed, exponential random variables.
Note: this Rcpp function is thread-safe, unlike the equivalent
alternatives.

## See also

`sum(dexp(x, rate, log=TRUE))`
