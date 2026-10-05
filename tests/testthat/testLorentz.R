library(serrsBayes)
context("Implementation of Lorentzian and Gaussian broadening functions in Rcpp.")

test_that("weightedGaussian computes the spectral signature", {
  Cal_V <- seq(300,400,by=5)
  loc <- c(320,350,375)
  scG <- c(10,5,1)
  amp <- c(100,500,200)
  N_WN_Cal <- length(Cal_V)
  N_Peaks <- length(loc)
  Sigi<-rep(0,N_WN_Cal)
  for(j in 1:N_Peaks) {
    Sigi <- Sigi + amp[j]*sqrt(2*pi)*scG[j]*dnorm(Cal_V, loc[j], scG[j])
  }
  expect_equal(weightedGaussian(loc,scG,amp,Cal_V), Sigi)
})

test_that("weightedLorentzian computes the spectral signature", {
  Cal_V <- seq(300,400,by=5)
  loc <- c(320,350,375)
  scL <- c(3,20,7)
  amp <- c(100,500,200)
  N_WN_Cal <- length(Cal_V)
  N_Peaks <- length(loc)
  Sigi<-rep(0,N_WN_Cal)
  for(j in 1:N_Peaks) {
    Sigi <- Sigi + amp[j]*pi*scL[j]*dcauchy(Cal_V, loc[j], scL[j])
  }
  expect_equal(weightedLorentzian(loc,scL,amp,Cal_V), Sigi)
})


test_that("residualResampling keeps every parent in place without modifying the weights", {
  set.seed(1)
  for (t in 1:200) {
    n <- 100
    log_wt <- rnorm(n, 0, sample(c(0.5, 2, 5), 1))
    log_wt <- log_wt - log(sum(exp(log_wt)))
    orig <- log_wt + 0 # a copy, for comparison
    idx <- residualResampling(log_wt)
    expect_identical(log_wt, orig)
    expect_true(all(idx >= 1 & idx <= n))
    parents <- unique(idx)
    expect_identical(idx[parents], parents) # Condition 9 of Murray, Lee & Jacob (2015)
  }
})

test_that("resampleParticles copies whole particles in place", {
  set.seed(2)
  npart <- 100; nPK <- 5; nWL <- 50; nB <- 8; n_y <- 2
  ampMx <- matrix(rnorm(nPK*npart), nPK, npart)
  scaleMx <- matrix(rnorm(nPK*npart), nPK, npart)
  peaks <- matrix(rnorm(nWL*npart), nWL, npart)
  baselines <- array(rnorm(nB*n_y*npart), dim=c(nB, n_y, npart))
  orig <- list(amp=ampMx + 0, scale=scaleMx + 0, peaks=peaks + 0, bl=baselines + 0)
  log_wt <- rnorm(npart, 0, 2)
  log_wt <- log_wt - log(sum(exp(log_wt)))
  idx <- resampleParticles(log_wt, ampMx, scaleMx, peaks, baselines, n_y, nB)
  expect_equal(ampMx, orig$amp[, idx])
  expect_equal(scaleMx, orig$scale[, idx])
  expect_equal(peaks, orig$peaks[, idx])
  expect_equal(baselines, orig$bl[, , idx])
})
