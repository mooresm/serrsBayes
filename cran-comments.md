Fixed WARN due to options digits=0 in vignette

## Test environments

* Travis CI on Ubuntu, see status at
    + <https://travis-ci.org/mooresm/serrsBayes>
* `devtools::check_win_devel` OK, see status at
  + <https://win-builder.r-project.org/q4W4R40DY3OU/00check.log>
* `rhub::check_for_cran`, see status at
   + `fedora-gcc-devel` <https://builder.r-hub.io/status/serrsBayes_0.4-2.tar.gz-76473afc0c7144c3b8c73cf823a56c2f>
   + `debian-gcc-devel` <https://builder.r-hub.io/status/serrsBayes_0.4-2.tar.gz-88e82684651a419b8e30268e2c8fd496>
   + `macos-highsierra-release-cran` <https://builder.r-hub.io/status/serrsBayes_0.4-2.tar.gz-2659021ad8ba4e4a95f2887be8a7b362>
   + `solaris-x86-patched` <https://builder.r-hub.io/status/serrsBayes_0.4-2.tar.gz-c39ee8b1f4e44f988d95c73c1293be7f>

## R CMD check results

There were no ERRORs nor WARNings. 

There was 1 NOTE:

* Check: installed package size 
    - sub-directories of 1Mb or more: libs  16.2Mb
    - (this is a known issue with RcppEigen when compiled with debug symbols)

## Downstream dependencies

There are currently no downstream dependencies for this package.
