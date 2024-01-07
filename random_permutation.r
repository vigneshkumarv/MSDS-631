# Purpose: Perform random permutation from a sample of numbers from 1 to 200 that are uniformly distributed
# Author: Vignesh Kumar Venkateshwar
# Date: October 21, 2023

set.seed(34)
sample_data <- 1:200
permuted_data <- sample(sample_data)
print(permuted_data)

