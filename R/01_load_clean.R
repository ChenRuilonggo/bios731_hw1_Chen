library(tidyverse)


svi_raw <- read_csv(
  "data/CDC_Social_Vulnerability_Index__CDCSVI_.csv",
  show_col_types = FALSE
)


svi_tidy <- svi_raw %>%
  select(
    Geography,
    Name_Geography,
    Year,
    RPL_Themes,
    WeightedAvgQuintile,
    TotalPopulation,
    Condition_TotalPop
  ) %>%
  drop_na()


write_csv(svi_tidy, "data_clean/svi_tidy.csv")

