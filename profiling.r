# Purpose: Profiling in R
# Author: Vignesh Kumar Venkateshwar
# Date: December 2, 2023

# Installs and libraries
library(profvis)

# Function to calculate sum of numbers
sum_func <- function(n) {
  Start_time <- Sys.time()                  # Record start time
  result <- sum(1:n)                        # calculate sum of numbers 1 to n
  end_time <- Sys.time()                    # Record end time
  elapsed_time <- end_time - Start_time     # calculate elapsed time
  
  cat("Sum of numbers 1 to ", n, ":", result, "\n");
  cat("Time spent in sum_func:", elapsed_time, "seconds\n")
}

# Function to calculate sum of squares of numbers
sum_of_squares_func <- function(n) {
  Start_time <- Sys.time()                  # Record start time
  result <- sum((1:n)^2)                    # Calculate sum of squares for numbers 1 to n
  end_time <- Sys.time()                    # Record end time
  
  elapsed_time <- end_time - Start_time     # calculate elapsed time
  
  cat("Sum of squares of numbers 1 to ", n, ":", result, "\n")
  cat("Time spent in sum_of_squares_func:", elapsed_time, "seconds\n")
}


# Main
n <- 100

print("calling sum_func")
sum_func(n)
print("Calling sum_of_squares_func")
sum_of_squares_func(n)

# Profiling
profvis({
  sum_func(n)
  sum_of_squares_func(n)
})

