library(tidyverse)

svi_tidy <- read_csv("data_clean/svi_tidy.csv", show_col_types = FALSE)

p <- ggplot(
  svi_tidy,
  aes(x = WeightedAvgQuintile, y = RPL_Themes)
) +
  geom_point(alpha = 0.4) +
  geom_smooth(method = "lm", se = TRUE) +
  labs(
    title = "Social Vulnerability and Average Quintile",
    x = "Weighted Average Quintile",
    y = "Overall Social Vulnerability Index"
  ) +
  theme_minimal()

print(p)
