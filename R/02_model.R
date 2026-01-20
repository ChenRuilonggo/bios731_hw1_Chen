library(tidyverse)

# Read cleaned data
svi_tidy <- read_csv("data_clean/svi_tidy.csv", show_col_types = FALSE)

# Linear regression
svi_lm <- lm(
  RPL_Themes ~ WeightedAvgQuintile + TotalPopulation,
  data = svi_tidy
)

# Output model summary
print(summary(svi_lm))

