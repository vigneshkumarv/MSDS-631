# Purpose: Analyze msleep dataset and perform exploratory data analysis
# Author: Vignesh Kumar Venkateshwar

# Installs and libraries
library(ggplot2)

# Load dataset
data("msleep")

# View dataset dimensions
dim(msleep)

# View first six rows of the dataset
head(msleep)

# scatter plot
plot(x = msleep$sleep_total, y = msleep$awake,
     xlab = "Total Sleep Time",
     ylab = "Time Awake",
     main = "Total Sleep Time Vs Time Awake")