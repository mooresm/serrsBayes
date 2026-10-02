* Merged pull request from Dirk Eddelbuettel for compatibility with Eigen 5.0
* Replaced deprecated Matrix coercions `as(., "dgCMatrix")` with coercions via virtual classes
* Fixed NOTE for using old-style personList() or as.personList() in CITATION
* Replaced Travis with GitHub Actions for CI and code coverage

## Test environments

* `devtools::check_win_devel` OK, see status at
  + <https://win-builder.r-project.org/XeiRy39aMOsM/00check.log>
* `rhub::check_for_cran`, see status at
   + `ubuntu-gcc-release` <https://builder.r-hub.io/status/serrsBayes_0.5-0.tar.gz-e3de8d7b411f403993881505e06d557c>
   + `solaris-x86-patched` <https://builder.r-hub.io/status/serrsBayes_0.5-0.tar.gz-9a792b8b48964b5cb0111a648fd3df9d>
   + `windows-x86_64-devel` <https://builder.r-hub.io/status/serrsBayes_0.5-0.tar.gz-85c4772eb0e64a7eb925223a45c157d8>

## R CMD check results

Status OK: no ERRORs, WARNINGs, nor NOTEs.

## Downstream dependencies

There are currently no downstream dependencies for this package.
