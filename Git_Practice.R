library(tidyverse)

library(dslabs)

Pract_data <- dslabs::gapminder #

results_gdp <- Pract_data |> filter(life_expectancy > 75) |> group_by(continent) |> summarise(mean_gdp=mean(gdp, na.rm = TRUE))


write_csv(data_gdp, file = "gdp_continent.csv")

gdp_graph <- Pract_data |> ggplot() +aes(year, gdp) + geom_point()
ggsave(gdp_graph,file="gdp_graph.jpeg")

