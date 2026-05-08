library(tidyverse)

data <- read_csv("~/Downloads/envisci-project/Data/Record/hf182-01-trees-current-env.csv")
data$prop_beech <- data$fagus / data$count
data$prop_hemlock <- data$tsuga / data$count

## Density of proportion metric

ggplot(data = data, aes(x = prop_beech)) +
  geom_histogram(color="blue", fill = "blue", alpha = 0.5) +
  labs(
    y = "Density", 
    x = "Beech presence proportion"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(family='', face='bold', size=20),
    plot.subtitle = element_text(family='', color="#757575", size=14)
  )


## Beech presence vs Annual temp

ggplot(data = data, aes(x = bio1.0, y = prop)) +
  geom_point(aes(x = bio1.0, y = prop), color="blue", alpha = 0.5) +
  labs(
    y = "Beech Presence", 
    x = "Mean Annual Temperature (z-score)", 
    title = "Higher annual temps correlate with less Beech trees", 
    subtitle = "Gridded data from 2010-2011 across U.S. & Canada"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(family='', face='bold', size=20),
    plot.subtitle = element_text(family='', color="#757575", size=14)
  )

## A lil heatmap

states <- map_data("state")
ggplot(states, aes(long, lat, group = group)) +
  geom_polygon(fill = "white", colour = "black") +
  coord_map() +
  geom_point(data = data, aes(x = lon, y = lat, group = 1, alpha = prop_hemlock), 
             fill = "red", color = "red") +
  labs(x = "Longitude", 
       y = "Latitude", 
       title="Hemlock concentration across continental U.S.",
       subtitle = "Gridded data from 2010-2011 across U.S. & Canada (Record et al.)",
       alpha = "% plots w/\n Hemlock") +
  theme_minimal() +
  theme(
    plot.title = element_text(family='', face='bold', size=20),
    plot.subtitle = element_text(family='', color="#757575", size=14)
  )

ggplot(states, aes(long, lat, group = group)) +
  geom_polygon(fill = "white", colour = "black") +
  coord_map() +
  geom_point(data = data, aes(x = lon, y = lat, group = 1, alpha = prop_beech), 
             fill = "blue", color = "blue") +
  labs(x = "Longitude", 
       y = "Latitude", 
       title="Beech concentration across continental U.S.",
       subtitle = "Gridded data from 2010-2011 across U.S. & Canada (Record et al.)",
       alpha = "% plots w/\n Beech") +
  theme_minimal() +
  theme(
    plot.title = element_text(family='', face='bold', size=20),
    plot.subtitle = element_text(family='', color="#757575", size=14)
  )

