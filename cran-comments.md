This is a resubmission to address comments on the previous version 0.3-9:

* please add more small executable examples in your Rd-files

I have added minimal examples for the 3 main functions: `fitSpectraMCMC`, `fitSpectraSMC`, and `fitVoigtPeaksSMC`. These are the only entry points that most users of the R package will ever need to call directly. All of the other functions are used internally by one of these 3.

* running examples for arch 'i386' ... [13s] OK
* running examples for arch 'x64' ... [11s] OK

## Test environments
* local macOS 10.12.6 (Sierra) install, R 3.4.3 from CRAN
* Travis CI on Ubuntu 14.04.5 LTS, R 3.4.2, see status at
    + <https://travis-ci.org/mooresm/serrsBayes>
* `devtools::build_win`, see status at
    + <https://win-builder.r-project.org/1YwQRWL7hGh0/00check.log>
* `rhub::check_for_cran`, see status at
    + <http://builder.r-hub.io/status/serrsBayes_0.3-10.tar.gz-905a21a287c646ff924af0e8c093cf1d>
    + <http://builder.r-hub.io/status/serrsBayes_0.3-10.tar.gz-c31b934b92a342ec8961eaaba0e50ed1>
    + <http://builder.r-hub.io/status/serrsBayes_0.3-10.tar.gz-481d0af2065d40afa3b7a914a47e4c92>
    + <http://builder.r-hub.io/status/serrsBayes_0.3-10.tar.gz-537a9811b25744c3a15693065cf0b91d>

## R CMD check results
There were no ERRORs nor WARNings. 

There was 1 NOTE:

* checking CRAN incoming feasibility
    - New submission

## Downstream dependencies
There are currently no downstream dependencies for this package.
