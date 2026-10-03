library(testthat)
# CRAN allows at most 2 threads during checks; OpenMP reads this when serrsBayes is loaded
Sys.setenv(OMP_NUM_THREADS = 2)
library(serrsBayes)

test_check("serrsBayes")
