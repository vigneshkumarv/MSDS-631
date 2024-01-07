# Purpose: Function to display date and time
# Author: Vignesh Kumar Venkateshwar
# Date: October 22, 2023

# Date and time
datetime <- Sys.time()

# Date and time using the specified formats
date_today <- strftime(datetime, format = "%a")
date_today_time_now <- strftime(datetime, format = "%c")
day <- strftime(datetime, format = "%j")
month <- strftime(datetime, format = "%m")
ampm <- strftime(datetime, format = "%p")
seconds <- strftime(datetime, format = "%S")
date_locale <- strftime(datetime, format = "%x")

# Print results
cat("Today:", date_today, "\n")
cat("Date today and time now:", date_today_time_now, "\n")
cat("Day:", day, "\n")
cat("Month:",month, "\n")
cat("AM or PM:", ampm, "\n")
cat("Seconds:", seconds, "\n")
cat("Locale's date:", date_locale, "\n")
