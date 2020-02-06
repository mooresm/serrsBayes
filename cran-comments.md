
## Test environments

* Travis CI on Ubuntu, see status at
    + <https://travis-ci.org/mooresm/serrsBayes>
* `rhub::check_for_cran`, see status at
    + Ubuntu Linux, R-devel, GCC <https://builder.r-hub.io/status/serrsBayes_0.4-1.tar.gz-a570a771ceb54c3a8b0bc9d4dd520e83>
    + Oracle Solaris 10, x86, 32 bit, R-patched <https://builder.r-hub.io/status/serrsBayes_0.4-1.tar.gz-0f235d6f0df443ac83b8915b39e8c966>
    + macOS 10.11 El Capitan, R-release <https://builder.r-hub.io/status/serrsBayes_0.4-1.tar.gz-a40d113a0cb240889326bde56db0de56>

## R CMD check results

There were no ERRORs nor WARNings. 

There was 1 NOTE:

* Check: installed package size 
    - sub-directories of 1Mb or more: libs  16.2Mb
    - (this is a known issue with RcppEigen when compiled with debug symbols)

## Downstream dependencies

There are currently no downstream dependencies for this package.
