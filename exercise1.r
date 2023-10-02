## Purpose: Using Vectors and Objects
## Vignesh Kumar Venkateshwar

## Create an integer variable e holding the value 42! Check the object class of e with class()!
e <- 42L
print(class(e))
## Convert e to the character data type with as.character()! Check the object class again!
f <- as.character(e)
print(class(f))
## Create a character vector friends with four names from your circle of friends or acquaintances!
friends <- c("John", "Smith", "Otis", "Jean")
## Index the second element from the vector friends!
friends[2]
## Replace the first element of the vector friends with “Isolde” and check the updated vector again!
friends[1] <- "Isolde"
print(friends)
## Create a vector v1 from the following elements 1, “Hello”, 2, “World” ! Check the object class!
v1 <- c(1, "Hello", 2, "World")
print(class(v1))
## Create a vector v2 with numerical values (only integers) ranging from 4 to 10!
v2 <- c(4:10)
print(v2)
## Index the first three elements from v2!
v2[1:3]
## Index all elements of v2 except the second element and save the result as v2.subset!
v2.subset <- v2[-2]
## Use the length() function to find out the length of v2.subset (= the number of elements in the vector)! 
print(length(v2.subset))