library(dplyr)
library(ggplot2)

mobile_phone_prices <- read.csv("C:/Users/Wong/OneDrive/Desktop/QMBE 3730 - Trevor Wong Analytics Desktop/QMBE-3730-Trevor-Wong-Analytics/mobile_phone_prices.csv")

mppf <- mobile_phone_prices %>%
  filter(!is.na(int_memory) & !is.na(mobile_weight) & !is.na(battery_power) & !is.na(four_g)& !is.na(number_of.cores))

ggplot(mppf, aes(x = int_memory, y = mobile_weight)) +
  geom_point() + 
  labs(x = "Internal Memory", y = "Mobile Weight") +
  ggtitle("Internal Memory vs. Mobile Weight")


ggplot(mppf, aes(x = battery_power)) +
  geom_histogram(binwidth = 100) +  
  labs(x = "Battery Power", y = "Number of Observations") +
  ggtitle("Histogram of Battery Power")


mppf$four_g <- factor(mppf$four_g, levels = c(0, 1), labels = c("No 4G", "4G"))

ggplot(mppf, aes(x = four_g, y = px_width, fill = four_g)) +
  geom_boxplot() +
  labs(x = "4G", y = "Pixel Width", fill = "4G") +
  ggtitle("4G vs. Pixel Width")

cores_count <- table(mppf$number_of.cores)

pie(table(mppf$number_of.cores), 
    labels = paste(names(cores_count), ": ", cores_count), 
    main = "Number of Cores")



