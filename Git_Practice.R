library(tidyverse)

library(dslabs)

Pract_data <- dslabs::gapminder #

results_gdp <- Pract_data |> filter(life_expectancy > 65) |> group_by(continent) |> summarise(mean_gdp=mean(gdp, na.rm = TRUE))

write_csv(results_gdp, file = "gdp_continent.csv")




