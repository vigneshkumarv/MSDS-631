# Purpose: Function to convert temperature from Fahrenheit to Celsius
# Author: Vignesh Kumar Venkateshwar
# Date: October 22, 2023

convert_fahrenheit_to_celsius <- function(Temp_in_fahrenheit) {
  celsius <- (5/9) * (Temp_in_fahrenheit - 32)
  return(celsius)
}

temp <- convert_fahrenheit_to_celsius(68)
cat("Temperature in Celsius is: ", temp, "degrees.\n")
