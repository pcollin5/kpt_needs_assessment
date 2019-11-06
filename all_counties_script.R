counties_served <- c("Carter County", "Greene County", "Hancock County", "Hawkins County", "Johnson County", "Sullivan County", "Washington County", "Unicoi County")

counties_tract <- get_acs(geography = "tract", county = counties_served, state = "TN", table = "S1701", year = 2017, geometry = TRUE, summary_var = "S0101_C01_001")

names(subject_table_variables)

uethda_2017 <- inner_join(counties_tract, subject_table_variables, by = "variable")

all_under_5 <- uethda_2017 %>%
  filter(variable == "S1701_C03_003") %>%
  mutate("Age < 5 Percent in Poverty" = estimate)

mapview(all_under_5, zcol = "Age < 5 Percent in Poverty", legend = TRUE)

races <- uethda_2017 %>%
  filter(variable == "S1701_C03_013" | variable == "S1701_C03_014" | variable == "S1701_C03_015" | variable == "S1701_C03_016" | variable == "S1701_C03_017" | variable == "S1701_C03_018"
         | variable == "S1701_C03_019" | variable == "S1701_C03_020" | variable == "S1701_C03_021") 
mapview(races)

ggplot(races, aes(fill = estimate))+
  geom_sf()+
  facet_wrap(~variable)

races %>%
  group_by(variable) %>%
  count()
