This version changes the maintainer email address (see below for details).

## Test environments
* local macOS 10.12.6 (Sierra) install, R 3.5.0 from CRAN
* Travis CI on Ubuntu 14.04.5 LTS, R 3.4.2, see status at
    + <https://travis-ci.org/mooresm/serrsBayes>
* `devtools::build_win`, see status at
    + <https://win-builder.r-project.org/5drqDZNj8Mb1/00check.log>
* `rhub::check_for_cran`, see status at
    + <http://builder.r-hub.io/status/serrsBayes_0.3-13.tar.gz-7c7aa895044044d88b01d07b9b301e38
   http://builder.r-hub.io/status/serrsBayes_0.3-13.tar.gz-b63c99ef628646448c19b24843ba55f5
   http://builder.r-hub.io/status/serrsBayes_0.3-13.tar.gz-7b2aba133c8449b98f31e6f009af372f>

## R CMD check results
There were no ERRORs nor WARNings. 

There were 2 NOTEs:

* Check: installed package size 
    - sub-directories of 1Mb or more: libs 17.2Mb 
    - (this is a known issue with RcppEigen when compiled with debug symbols)

* checking CRAN incoming feasibility
    - New maintainer:  Matt Moores <mmoores@gmail.com>
    - Old maintainer(s): Matt Moores <M.T.Moores@warwick.ac.uk>

## Downstream dependencies
There are currently no downstream dependencies for this package.
