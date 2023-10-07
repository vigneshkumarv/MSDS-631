## Purpose: Usage of Matrices
## Author: Vignesh Kumar Venkateshwar

# Create a matrix named m1 with three rows and five columns and all numeric values from 6 to 20
m1 <- matrix(c(6:20), nrow = 3, ncol = 5)
# Multiply all elements in m1 by 0.5, Overwrite the matrix m1 with the result
m1 <- m1 * 0.5
# Create another matrix m2 with one row and five columns and all the numeric values from 1 to 5
m2 <- matrix(c(1:5), nrow=1, ncol=5)
# Calculate the sum of all elements in m2
m2_sum <- sum(m2)
# Combine m1 and m2 with rbind(). Save the result as m3 and check its dimension
m3 <- rbind(m1, m2)
dim(m3)
# Index the 5th column of m3
m3[,5]
# Index the 2nd and 4th lines of m3
m3[c(2,4),]
# Calculate the sums of all columns in m3
colSums(m3)
# Calculate the standard deviation for the 3rd column in m3
sd(m3[,3])
# From m3, index the element in the 2nd column and 2nd line and all eight adjacent elements
# Save the result as m4 and examine its object class
m4 <-c(m3[1,1], m3[2,1], m3[3,1], m3[1,2], m3[2,2], m3[3,2], m3[1,3], m3[2,3], m3[3,3])
class(m4)