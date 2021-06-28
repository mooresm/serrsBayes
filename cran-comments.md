* Fixed broken link to EPSRC grants website (now uses UKRI Gateway to Research)
* Merged pull request from Rcpp team to use constant M_PI instead of PI to support STRICT_R_HEADERS

## Test environments

* `devtools::check_win_devel` OK, see status at
  + <https://win-builder.r-project.org/XeiRy39aMOsM/00check.log>
* `rhub::check_for_cran`, see status at
   + `ubuntu-gcc-release` <https://builder.r-hub.io/status/serrsBayes_0.5-0.tar.gz-e3de8d7b411f403993881505e06d557c>
   + `solaris-x86-patched` <https://builder.r-hub.io/status/serrsBayes_0.5-0.tar.gz-9a792b8b48964b5cb0111a648fd3df9d>
   + `windows-x86_64-devel` <https://builder.r-hub.io/status/serrsBayes_0.5-0.tar.gz-85c4772eb0e64a7eb925223a45c157d8>

## R CMD check results

There were no ERRORs nor WARNings. 

There was 1 NOTE:

* Check: installed package size 
    - sub-directories of 1Mb or more: libs  16.2Mb
    - (this is a known issue with RcppEigen when compiled with debug symbols)

## Downstream dependencies

There are currently no downstream dependencies for this package.
