This is a bug-fix release. The CRAN checks for 0.6-0 showed an intermittent test ERROR on
r-devel-linux-x86_64-fedora-gcc (it has since passed on re-check), caused by a data race in the
OpenMP-parallel resampling code. The same code also resampled incorrectly regardless of threading,
hence the update within a few days.

* Fixed residual resampling in `fitSpectraSMC`, so that the in-place parallel copy no longer overwrites particles that are still being copied from
* `resampleParticles` now copies the full spectral signature of each particle
* `residualResampling` no longer modifies the caller's log-weights
* Added unit tests for `residualResampling` and `resampleParticles`

## Test environments

* local: macOS (aarch64), R 4.6.1, Apple clang 21 with OpenMP (1, 2 and 8 threads give identical results)
* R-hub v2 (`rhub::rhub_check()`): linux, macos, windows, clang-asan, gcc-asan
  + <https://github.com/mooresm/serrsBayes/actions/runs/37272896290>
* R-hub v2 valgrind
  + <https://github.com/mooresm/serrsBayes/actions/runs/37277879907>
* win-builder (`devtools::check_win_devel()`)
  + <https://win-builder.r-project.org/WINBUILDER_ID/00check.log>

valgrind: 0 bytes definitely lost in both the examples and the tests; one block of 368-384 bytes 'possibly lost' in libgomp thread-local storage, allocated when OpenMP creates its thread pool. This is a known valgrind false positive for OpenMP.

## R CMD check results

There were no ERRORs or WARNINGs.

There was 1 NOTE:

* Days since last update: 2. This is a bug-fix release for the intermittent CRAN check failure and resampling bugs described above.
* Possibly invalid URL: https://app.codecov.io/gh/mooresm/serrsBayes (Codecov badge in README.md).
  The URL is valid in a browser, but Codecov does not respond to automated requests.

## Downstream dependencies

There are currently no downstream dependencies for this package.
