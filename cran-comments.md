Fixed WARN due to options digits=0 in vignette

## Test environments

* Travis CI on Ubuntu, see status at
    + <https://travis-ci.org/mooresm/serrsBayes>
* `devtools::check_win_devel` OK, see status at
  + <https://win-builder.r-project.org/ODnQ0xjcpf02/00check.log>
* `rhub::check_for_cran`, see status at
   + `debian-gcc-devel` <https://builder.r-hub.io/status/serrsBayes_0.4-2.tar.gz-0d94698673984883a094f9c140137025>

## R CMD check results

There were no ERRORs nor WARNings. 

There was 1 NOTE:

* Check: installed package size 
    - sub-directories of 1Mb or more: libs  16.2Mb
    - (this is a known issue with RcppEigen when compiled with debug symbols)

## Downstream dependencies

There are currently no downstream dependencies for this package.
