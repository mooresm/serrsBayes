library(serrsBayes)
context("Smoke tests of the SMC algorithms on a simulated spectrum.")

# simulated spectrum with 5 Lorentzian peaks, as in the README
simSpectrum <- function() {
  set.seed(1234)
  wl <- seq(700, 1400, by=4)
  pkLoc <- c(840, 960, 1140, 1220, 1290)
  pkAmp <- c(11500, 2500, 4000, 3000, 2500)
  pkSc <- c(10, 15, 20, 10, 12)
  spc <- matrix(weightedLorentzian(pkLoc, pkSc, pkAmp, wl) + 1000*cos(wl/200) + 2*wl +
                  rnorm(length(wl), 0, 200), nrow=1)
  list(wl=wl, spc=spc, pkLoc=pkLoc, pkAmp=pkAmp)
}

test_that("fitSpectraSMC recovers the peak amplitudes", {
  sim <- simSpectrum()
  lPriors <- list(scale.mu=log(11.6) - (0.4^2)/2, scale.sd=0.4, bl.smooth=10^11, bl.knots=20,
                  beta.mu=5000, beta.sd=5000, noise.sd=200, noise.nu=4)
  invisible(capture.output(
    result <- fitSpectraSMC(sim$wl, sim$spc, sim$pkLoc, lPriors, npart=100)
  ))
  nPK <- length(sim$pkLoc)
  expect_equal(dim(result$beta), c(100, nPK))
  expect_equal(dim(result$scale), c(100, nPK))
  expect_equal(dim(result$expFn), c(100, length(sim$wl)))
  expect_equal(sum(result$weights), 1)
  expect_true(all(result$weights >= 0))
  expect_true(all(result$scale > 0) && all(result$sigma > 0))
  ampEst <- colSums(result$weights * result$beta)
  expect_equal(ampEst, sim$pkAmp, tolerance=0.3)
})

test_that("fitVoigtPeaksSMC recovers the peak locations", {
  sim <- simSpectrum()
  nPK <- length(sim$pkLoc)
  lPriors <- list(loc.mu=sim$pkLoc, loc.sd=rep(20,nPK), scaG.mu=log(10) - (0.34^2)/2, scaG.sd=0.34,
                  scaL.mu=log(10) - (0.4^2)/2, scaL.sd=0.4, noise.nu=5, noise.sd=200,
                  bl.smooth=1, bl.knots=20, beta.exp=15)
  set.seed(42)
  invisible(capture.output(
    result <- fitVoigtPeaksSMC(sim$wl, sim$spc, lPriors, npart=100, mcSteps=5)
  ))
  expect_equal(dim(result$location), c(100, nPK))
  expect_equal(dim(result$beta), c(100, nPK))
  expect_equal(tail(result$kappa, 1), 1) # likelihood tempering has completed
  expect_equal(sum(result$weights), 1)
  expect_true(all(result$scale_G > 0) && all(result$scale_L > 0) && all(result$beta > 0))
  locEst <- colSums(result$weights * result$location) / sum(result$weights)
  expect_true(all(abs(locEst - sim$pkLoc) < 10))
})
