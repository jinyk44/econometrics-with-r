# verify that the alternative estimator is unbiased
n <- 100
w <- c(rep((1+0.5)/n, n/2), rep((1-0.5)/n, n/2))
         
         
# define the alternative estimator mu_tilde
mu_tilde <- function(c){
  sum(w*c)
  }
         
# compute repeatedly estimates for both estimators and store the results in est_bar and est_tilde
set.seed(123)
est_bar = replicate(expr = mean(rnorm(mean = 5, sd = 10,100)),n = 10000)
est_tilde = replicate(expr = mu_tilde(rnorm(mean = 5, sd = 10,100)), n = 10000)
         
         
         
# compute the sample variances for est_bar and est_tilde
var(est_bar)
var(est_tilde)
