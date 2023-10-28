# install.packages("dplyr")
library(dplyr)
data("starwars")
glimpse(starwars)

# install.packages("ggplot2")
library(ggplot2)

# create a bar plot counting no. of species
starwars |> 
  count(species) |> 
  ggplot(aes(y = species, x = n)) +
  geom_col()


