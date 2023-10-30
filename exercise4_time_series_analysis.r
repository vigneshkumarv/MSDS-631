# Purpose: Perform time series analysis on gold data from forecast package
# Author: Vignesh Kumar Venkateshwar

# Installs and libraries
library(ggplot2)
library(forecast)

autoplot(gold)
spike_date <- which.max(gold)

gold_without_spike <- gold[-spike_date]

autoplot(gold) +
  annotate(geom="point", x = spike_date, y = gold[spike_date],
                          size = 5, shape = 21, colour = "red", fill = "transparent") +
  annotate(geom="text", x = spike_date, y = gold[spike_date],
           label = "Incorrect Value", hjust = -0.1, vjust = 0.5, size = 4, colour = "red")

ggplot() +
  geom_line(aes(x = 1:length(gold_without_spike), y = gold_without_spike)) +
  geom_hline(yintercept = 400, color="red", linewidth = 1)

