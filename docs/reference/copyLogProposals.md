# Initialise the vector of Metropolis-Hastings proposals.

This is an internal function that is only exposed on the public API for
unit testing purposes.

## Usage

``` r
copyLogProposals(nPK, T_Prop_Theta)
```

## Arguments

- nPK:

  number of Raman peaks in the spectral signature

- T_Prop_Theta:

  Vector of logarithms of the MH proposals

## Value

Vector of proposals
