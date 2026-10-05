# Compute cubic B-spline basis functions for the given wavenumbers.

This function computes penalised cubic B-splines using the method
proposed by Eilers & Marx (1996). The spline coefficients can be
computed efficiently using sparse matrix algebra, as described in Sect.
2.3.3 of Green & Silverman (1994) and Appendix B of Ruppert, Wand &
Carroll (2003).

## Usage

``` r
getBsplineBasis(V, n.b, pen, prec = 1e-08)
```

## Arguments

- V:

  a `vector` of wavenumbers, \\\Delta \tilde{\nu}\\.

- n.b:

  the number of basis functions to use.

- pen:

  the smoothing penalty hyperparameter.

- prec:

  a constant scale factor.

## Value

a `list` containing:

- `basis`:

  A dense nwl by n.b matrix containing the values of the basis
  functions.

- `precision`:

  A sparse n.b by n.b `dsCMatrix`, the inverse of the prior covariance.

- `distance`:

  The distance between each knot \\(cm^{-1})\\.

- `knots`:

  The knot locations.

## References

Eilers, PHC & Marx, BD (1996) "Flexible smoothing with B-splines and
penalties," Statist. Sci. 11(2): 89–121,
[doi:10.1214/ss/1038425655](https://doi.org/10.1214/ss/1038425655)

Green, PJ & Silverman, BW (1994) "Nonparametric Regression and
Generalized Linear Models: a roughness penalty approach" Chapman & Hall,
Boca Raton, FL, pp. 11–21.

Ruppert, D; Wand, MP & Carroll, RJ (2003) "Semiparametric Regression"
CUP, Cambridge, UK, pp. 336–340.

## See also

[`sparseMatrix`](https://rdrr.io/pkg/Matrix/man/sparseMatrix-class.html)
