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

# scatterplot of height against mass with points coloured by species
starwars |> 
  ggplot(aes(x = height, y = mass, col = species)) +
  geom_point()

# extract row with largest mass
starwars |> slice_max(mass)
