# Purpose: Analyze diamonds dataset and compute summary statistics
# Author: Vignesh Kumar Venkateshwar

# Installs and libraries
install.packages("ggplot2")
library(ggplot2)

# Load dataset
data("diamonds")

# View dataset dimensions
dim(diamonds)

# View first six rows of the dataset
head(diamonds)

# Get summary statistics
summary(diamonds)

# count total missing values in each column
sapply(diamonds, function(x) sum(is.na(x)))
