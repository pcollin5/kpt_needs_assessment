atlanta_counties <- c("Fulton", "DeKalb")



atl_counties_tract <- get_acs(geography = "tract", county = atlanta_counties, state = "GA", table = "S1701", year = 2017, geometry = TRUE, summary_var = "S0101_C01_001")

names(subject_table_variables)

atl_2017 <- inner_join(atl_counties_tract, subject_table_variables, by = "variable")

atl_all_under_5 <- atl_2017 %>%
  filter(variable == "S1701_C03_003") %>%
  mutate("Age < 5 Percent in Poverty" = estimate)

mapview(atl_all_under_5, zcol = "Age < 5 Percent in Poverty", legend = TRUE)

?get_acs

tn_test <- get_acs(geography = "congressional district",  state = "TN", table = "S1701", year = 2017, summary_var = "S0101_C01_001")

dist <- congressional_districts("TN")

tn_leg <- geo_join(dist, tn_test, "GEOID", "NAME")

View(tn_leg)

names(tn_test)

test2 <- tn_test %>% 
  filter(variable == "S1701_C03_003")

test3 <- tn_test %>%
  filter(variable == "S1701_C03_001")

tn_leg <- geo_join(dist, test2, "GEOID", "GEOID")

tn_leg2 <- geo_join(dist, test3, "GEOID", "GEOID")

names(tn_leg)

mapview(tn_leg2, zcol = "estimate", legend = TRUE)
