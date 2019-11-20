library(acs)
library(tidyverse)
library(tidycensus)
library(urbnmapr)
library(tigris)
library(leaflet)
library(mapview)







counties_served <- c("Carter County", "Greene County", "Hancock County", "Hawkins County", "Johnson County", "Sullivan County", "Washington County", "Unicoi County")

counties_tract <- get_acs(geography = "tract", county = counties_served, state = "TN", table = "S1701", year = 2017, geometry = TRUE, summary_var = "S0101_C01_001")

names(subject_table_variables)

uethda_2017 <- inner_join(counties_tract, subject_table_variables, by = "variable")

all_under_5 <- uethda_2017 %>%
  filter(variable == "S1701_C03_003") %>%
  mutate("Age < 5 Percent in Poverty" = estimate)



all_counties <- mapview(all_under_5, zcol = "Age < 5 Percent in Poverty", legend = TRUE)

mapshot(all_counties, file = paste0(getwd(), "/all_counties_under_5.png"),
        remove_controls = c("homeButton", "layersControl"))



races <- uethda_2017 %>%
  filter(variable == "S1701_C03_013" | variable == "S1701_C03_014" | variable == "S1701_C03_015" | variable == "S1701_C03_016" | variable == "S1701_C03_017" | variable == "S1701_C03_018"
         | variable == "S1701_C03_019" | variable == "S1701_C03_020" | variable == "S1701_C03_021") 
mapview(races, zcol = "variable", legend = TRUE)

ggplot(races, aes(fill = estimate))+
  geom_sf()+
  facet_wrap(~variable)

races %>%
  group_by(variable) %>%
  count()

library(tmap)
library(tidyverse)

qtm(races)
tm_shape(races)+tm_borders() + tm_fill(races$variable == "S1701_C03_014")

races %>%
  filter(variable == "S1701_C03_014") %>%
  tm_shape() +
  tm_polygons()



###whatever

head(uethda_2017)

median_income <- uethda_2017 %>%
  filter(variable == "DP03_0062")

head(median_income)
mapview(median_income)
