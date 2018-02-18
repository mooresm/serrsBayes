This version fixes a compile error on Solaris:

* call of overloaded `log(const int&)` is ambiguous

## Test environments
* local macOS 10.12.6 (Sierra) install, R 3.4.3 from CRAN
* Travis CI on Ubuntu 14.04.5 LTS, R 3.4.2, see status at
    + <https://travis-ci.org/mooresm/serrsBayes>
* `devtools::build_win`, see status at
    + <https://win-builder.r-project.org/S5I7K8rQDjAA/00check.log>
* `rhub::check_for_cran`, see status at
    + <http://builder.r-hub.io/status/serrsBayes_0.3-12.tar.gz-5e7de42ceb8e4231a5e58ce16e3f6981>
    + <http://builder.r-hub.io/status/serrsBayes_0.3-12.tar.gz-1cb84d217cf54fe6b85296a925aa6363>

## R CMD check results
There were no ERRORs nor WARNings. 

There were 2 NOTEs:

* Check: installed package size 
    - sub-directories of 1Mb or more: libs 17.2Mb 
    - (this is a known issue with RcppEigen when compiled with debug symbols)

* checking CRAN incoming feasibility
    - Days since last update: 3

## Downstream dependencies
There are currently no downstream dependencies for this package.
