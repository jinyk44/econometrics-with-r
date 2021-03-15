Y_tilde <- function(c){
	sum(c)/(length(c)-1)
}

# compute repeatedly estimates and store the results in est_consistent
set.seed(123)
est_consistent <- replicate(expr = Y_tilde(rnorm(mean = 10, sd = 25, 1000)), n = 10000)
# plot a histogram of est_biased
hist(est_consistent)

# add a red vertical line at mu = 10
abline(v = 10, col = 'red')
