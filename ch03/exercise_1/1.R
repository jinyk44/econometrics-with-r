# define a function for the estimator
Y_tilde <- function(c){
	sum(c)/(length(c)-1)
}         
         
# repeatedly compute estimates and store the results in est_biased
set.seed(123)
est_biased <- replicate(expr = Y_tilde(rnorm(5, mean = 10, sd = 25)),n = 10000)
         
         
# plot a histogram of est_biased
hist(est_biased)
         
         
# add a red vertical line at mu = 10
abline(v = 10,col = 'red')
