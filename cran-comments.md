
## Test environments

* Travis CI on Ubuntu, see status at
    + <https://travis-ci.org/mooresm/serrsBayes>
* `devtools::build_win`, see status at
    + <https://win-builder.r-project.org/tC4e7e09YD9D/00check.log>
* `rhub::check_for_cran`, see status at
    + Ubuntu Linux 16.04 LTS, R-release, GCC <https://builder.r-hub.io/status/serrsBayes_0.4-0.tar.gz-cee2482c3c02431cab4bbe534d4ca47c>
    + Oracle Solaris 10, x86, 32 bit, R-patched <https://builder.r-hub.io/status/serrsBayes_0.4-0.9003.tar.gz-c929c0d1e6c94851b7eb4713f7959d3d>
    + macOS 10.11 El Capitan, R-release <https://builder.r-hub.io/status/serrsBayes_0.4-0.9003.tar.gz-7268b100c44548479691001d6d31fdeb>

## R CMD check results
There were no ERRORs nor WARNings. 

There was 1 NOTE:

* Check: installed package size 
    - sub-directories of 1Mb or more: libs  16.2Mb
    - (this is a known issue with RcppEigen when compiled with debug symbols)

## Downstream dependencies
There are currently no downstream dependencies for this package.
