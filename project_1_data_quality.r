# Purpose: Analysis of Diamonds dataset
# Author: Vignesh Kumar Venkateshwar
# October 20, 2023

# Installs and libraries
library(ggplot2)

# Load dataset
data("diamonds")

# Create a scatter plot with labeled axes and colored points
ggplot(diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point() + 
  labs(x = "Weight of the diamond (carat)", y = "Price (USD)") +
  scale_color_manual(values = c("Fair" = "red", "Good" = "blue", "Very Good" = "green", "Premium" = "purple", "Ideal" = "orange"))
