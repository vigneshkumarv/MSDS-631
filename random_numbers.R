# Purpose: Simulate 100 standard normal numbers
# Author: Vignesh Kumar Venkateshwar
# Date: October 21, 2023

# Simulate 100 standard normal random numbers
# set.seed(12)
# data_std_normal <- rnorm(100, mean = 0, sd = 1)
# 
# # Create a histogram
# hist(data_std_normal, main = "Histogram of Standard Normal Random Numbers", xlab = "Value", ylab = "Frequency", col = "orange")


# Simulate 100 normal random numbers with mean 20 and standard deviation 2
set.seed(34)
data_mn_20_sd_2 <- rnorm(100, mean = 20, sd = 2)

# Create a histogram
hist(data_mn_20_sd_2, main = "Histogram of Normal Random Numbers (Mean=20, SD=2)", xlab = "Value", ylab = "Frequency", col = "green")
