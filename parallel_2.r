# Purpose: Parallelize function with 4 workers (with mclapply)
# Author: Vignesh Kumar Venkateshwar
# Date: December 10, 2023

# Note: 'mclapply' with multiple cores is not supported on windows as of the date above.

# Installs and libraries
library(parallel)

# Specify the number of cores/workers
num_cores <- 4

# Initialize the parallel backend with mclapply
cl <- makeCluster(num_cores)
clusterSetRNGStream(cl, iseed = 123)  # Setting seed for reproducibility

# Load the airquality dataset
data(airquality)

# Define the function to apply in parallel
normalize_function <- function(x) {
  (x - mean(x)) / sd(x)
}

# Run mclapply in parallel
# normalized_data <- mclapply(airquality, normalize_function, mc.cores = num_cores)

# Run parLapply in parallel (on Windows)
normalized_data <- parLapply(cl, airquality, normalize_function)

# Stop the parallel cluster
stopCluster(cl)

# Convert the result to a list
normalized_data <- as.list(normalized_data)

# Print result
print(normalized_data)