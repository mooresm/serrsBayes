* Merged pull request from Dirk Eddelbuettel for compatibility with Eigen 5.0
* Replaced deprecated Matrix coercions `as(., "dgCMatrix")` with coercions via virtual classes
* Fixed NOTE for using old-style personList() or as.personList() in CITATION
* Added SHLIB_OPENMP_CXXFLAGS to Makevars for parallel computation on supported platforms
* Replaced Travis with Rhub 2 GitHub Actions for CI and codecov for code coverage

## Test environments

* R-hub v2 (`rhub::rhub_check()`): linux, macos, windows, clang-asan, gcc-asan, valgrind
  + <https://github.com/mooresm/serrsBayes/actions/runs/37103178091>

valgrind: 0 bytes definitely lost; 368 bytes 'possibly lost' in libgomp thread-local storage, allocated when OpenMP creates its thread pool. This is a known valgrind false positive for OpenMP.

R-hub macos-arm64 and m1-san could not install the suggested package Hmisc from source (flang toolchain error); not related to serrsBayes.

## R CMD check results

Status OK: no ERRORs, WARNINGs, nor NOTEs.

## Downstream dependencies

There are currently no downstream dependencies for this package.
