# Purpose: Draw randomly 10 numbers from a uniform distribution of numbers from 100 to 10,000
# Author: Vignesh Kumar Venkateshwar
# Date: October 21, 2023

set.seed(12)
random_nos <- runif(10, min = 100, max = 10000)
print(random_nos)
