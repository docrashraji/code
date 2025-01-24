# Mr Muhammed is proud of you
library(tidyverse)

library(dslabs)  # why this code here?

Pract_data <- dslabs::gapminder 

results_gdp <- Pract_data |> filter(life_expectancy > 75) |> group_by(continent) |> summarise(mean_gdp=mean(gdp, na.rm = T))


write_csv(data_gdp, file = "gdp_continent.csv") #Use this code when saving a csv file

gdp_graph <- Pract_data |> ggplot() +aes(year, gdp) + geom_point()
ggsave(gdp_graph,file="gdp_graph.jpeg") # save the graph in .png

