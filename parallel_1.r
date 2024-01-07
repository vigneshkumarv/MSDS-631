# Purpose: Parallelize function for simulation
# Author: Vignesh Kumar Venkateshwar
# Date: December 10, 2023

# Installs and libraries
library(MKinfer)
library(doParallel)

# Create a function for running the simulation in parallel
simulate_type_I_parallel <- function(n1, n2, distr_fun, level = 0.05, B = 999, alternative = "two.sided", num_cores = detectCores(), ...) {
  # Define the simulate_iteration function inside the parallel environment
  simulate_iteration <- function(n1, n2, distr_fun, alternative, ...) {
    x <- distr_fun(n1, ...)
    y <- distr_fun(n2, ...)
    
    p_t_test <- t.test(x, y, alternative = alternative)$p.value
    p_perm_t_test <- perm.t.test(x, y, alternative = alternative, R = 999)$perm.p.value
    p_wilcoxon <- wilcox.test(x, y, alternative = alternative)$p.value
    
    c(p_t_test, p_perm_t_test, p_wilcoxon)
  }
  
  # Initialize parallel processing
  cl <- makeCluster(num_cores)
  registerDoParallel(cl)
  
  # Export necessary functions and objects to parallel workers
  clusterExport(cl, c("t.test", "perm.t.test", "wilcox.test", "simulate_iteration"))
  
  # Use foreach to run the simulations in parallel
  p_values <- foreach(i = 1:B, .combine = 'cbind') %dopar% simulate_iteration(n1, n2, distr_fun, alternative, ...)
  
  # Stop parallel processing
  stopCluster(cl)
  
  # Reshape the results into a data frame
  p_values <- as.data.frame(p_values)
  
  # Return the type I error rates
  return(colMeans(p_values < level))
}

# Example
set.seed(123)
result_parallel <- simulate_type_I_parallel(n1 = 30, n2 = 30, distr = rnorm)
print(result_parallel)
