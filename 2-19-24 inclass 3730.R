setwd("C:/Users/Wong/OneDrive/Deskto/QMBE 3730 - Trevor Wong Analytics Desktop/QMBE-3730-Trevor-Wong-Analytics")

mobile_phone_prices <- read.csv("C:/Users/Wong/OneDrive/Desktop/QMBE 3730 - Trevor Wong Analytics Desktop/QMBE-3730-Trevor-Wong-Analytics/mobile_phone_prices.csv")


df <- data.frame(
  name = c("Alice","Bob","Charlie"),
  Age = c(25,30,35),
  Salary = c(50000, 60000, 70000),
  stringsAsFactors = FALSE
)

head(df)


library(dplyr)


filtered_df <- filter(df, Age>30)
print(filtered_df)


mutated_df <-mutate(df, monthly_salary = Salary/12)
head(mutated_df)

