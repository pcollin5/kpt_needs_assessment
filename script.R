###community needs assessment for kingsport city###

library(acs)
library(tidyverse)
library(tidycensus)
library(urbnmapr)
library(tigris)
library(leaflet)


full_acs_2017 <- load_variables(2017, "acs5", cache = TRUE)


###data profile variables###
dp_table_variables <- load_variables(2017, "acs5/profile", cache = TRUE)


###poverty table subject variables###
subject_table_variables <- load_variables(2017, "acs5/subject", cache = TRUE)




View(subject)
View(variables)

?load_variables



###need the individual data profile tables###

dp02_2017 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP02", year = 2017, output = "wide")

dp03_2017 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP03", year = 2017, output = "wide")

tidy_dp03_2017 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP03", year = 2017)

dp04_2017 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP04", year = 2017, output = "wide")

dp05_2017 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP05", year = 2017, output = "wide")

data_2016 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = tables, year = 2016, output = "wide")

data_2015 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = tables, year = 2015, output = "wide")

data_2014 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = tables, year = 2014, output = "wide")


###poverty table is S1701

#iew(subject_table_variables)

###s1701: Poverty status in past 12 months

sullivan_s1701_2017 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1701", year = 2017, output = "wide", geometry = TRUE, summary_var = "S0101_C01_001")


sullivan_s1701_2016 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1701", year = 2016, output = "wide", geometry = TRUE)

sullivan_s1701_2015 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1701", year = 2015, output = "wide", geometry = TRUE)

sullivan_s1701_2014 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1701", year = 2014, output = "wide", geometry = TRUE)

sullivan_s1701_2013 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1701", year = 2013, output = "wide", geometry = TRUE)


###s1702: poverty status in the past 12 months of families

sullivan_s1702_2017 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1702", year = 2017, output = "wide", geometry = TRUE)

sullivan_s1702_2016 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1702", year = 2016, output = "wide", geometry = TRUE)

sullivan_s1702_2015 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1702", year = 2015, output = "wide", geometry = TRUE)

sullivan_s1702_2014 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1702", year = 2014, output = "wide", geometry = TRUE)

sullivan_s1702_2013 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1702", year = 2013, output = "wide", geometry = TRUE)

###s1703: selected characteristics of people at specified levels of poverty in the past 12 months

sullivan_s1703_2017 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1703", year = 2017, output = "wide", geometry = TRUE)

sullivan_s1703_2016 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1703", year = 2016, output = "wide", geometry = TRUE)

sullivan_s1703_2015 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1703", year = 2015, output = "wide", geometry = TRUE)

sullivan_s1703_2014 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1703", year = 2014, output = "wide", geometry = TRUE)

sullivan_s1703_2013 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1703", year = 2013, output = "wide", geometry = TRUE)


variables_to_keep <- c(1,2,3,4,6,7,8,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61)


###try and get the variable names the easy way
###need the tidy version not the wide to get the stupid variable names joined correctly

new_names <- c("variable", "label", "concept")

names(subject_table_variables) <- new_names


sullivan_s1701_2017_tidy <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1701", year = 2017, geometry = TRUE, summary_var = "S0101_C01_001")

sullivan_s1701_2016_tidy <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1701", year = 2016,  geometry = TRUE)

sullivan_s1701_2015_tidy <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1701", year = 2015,  geometry = TRUE)

sullivan_s1701_2014_tidy <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1701", year = 2014, geometry = TRUE)

sullivan_s1701_2013_tidy <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1701", year = 2013, geometry = TRUE)

###this works###

sc_s1701_2017 <- inner_join(sullivan_s1701_2017_tidy, subject_table_variables, by = "variable")

sc_s1701_2016 <- inner_join(sullivan_s1701_2016_tidy, subject_table_variables, by = "variable")

sc_s1701_2015 <- inner_join(sullivan_s1701_2015_tidy, subject_table_variables, by = "variable")

sc_s1701_2014 <- inner_join(sullivan_s1701_2014_tidy, subject_table_variables, by = "variable")

sc_s1701_2013 <- inner_join(sullivan_s1701_2013_tidy, subject_table_variables, by = "variable")



###s1702: poverty status in the past 12 months of families

sullivan_s1702_2017_tidy <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1702", year = 2017,  geometry = TRUE)

sullivan_s1702_2016_tidy <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1702", year = 2016,  geometry = TRUE)

sullivan_s1702_2015_tidy <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1702", year = 2015,  geometry = TRUE)

sullivan_s1702_2014_tidy <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1702", year = 2014,  geometry = TRUE)

sullivan_s1702_2013_tidy <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1702", year = 2013,  geometry = TRUE)

sc_s1702_2017 <- inner_join(sullivan_s1702_2017_tidy, subject_table_variables, by = "variable")

sc_s1702_2016 <- inner_join(sullivan_s1702_2016_tidy, subject_table_variables, by = "variable")

sc_s1702_2015 <- inner_join(sullivan_s1702_2015_tidy, subject_table_variables, by = "variable")

sc_s1702_2014 <- inner_join(sullivan_s1702_2014_tidy, subject_table_variables, by = "variable")

sc_s1702_2013 <- inner_join(sullivan_s1702_2013_tidy, subject_table_variables, by = "variable")


###s1703: selected characteristics of people at specified levels of poverty in the past 12 months

sullivan_s1703_2017_tidy <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1703", year = 2017,  geometry = TRUE)

sullivan_s1703_2016_tidy <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1703", year = 2016,  geometry = TRUE)

sullivan_s1703_2015_tidy <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1703", year = 2015,  geometry = TRUE)

sullivan_s1703_2014_tidy <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1703", year = 2014,  geometry = TRUE)

sullivan_s1703_2013_tidy <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1703", year = 2013,  geometry = TRUE)


sc_s1703_2017 <- inner_join(sullivan_s1703_2017_tidy, subject_table_variables, by = "variable")

sc_s1703_2016 <- inner_join(sullivan_s1703_2016_tidy, subject_table_variables, by = "variable")

sc_s1703_2015 <- inner_join(sullivan_s1703_2015_tidy, subject_table_variables, by = "variable")

sc_s1703_2014 <- inner_join(sullivan_s1703_2014_tidy, subject_table_variables, by = "variable")

sc_s1703_2013 <- inner_join(sullivan_s1703_2013_tidy, subject_table_variables, by = "variable")


?cbind.acs


View(sc_s1701_2014)

###now lets work on mapping things

?tracts
tracts <- tracts("TN", "Sullivan")
plot(tracts)

roads <- roads("TN", "Sullivan")
plot(roads)

?rbind_tigris
plot(tracts)

View(sc_s1701_2017)

head(sc_s1701_2017)

sc_s1701_2017 %>%
  filter(variable == "S1701_C01_001") %>%
  ggplot(aes(fill = estimate)) +
  geom_sf()+
  scale_fill_viridis_c(option = "magma")
  
install.packages("mapview")
library(mapview)


pop <- sc_s1701_2017 %>%
  filter(variable == "S1701_C01_001") 

names(sc_s1701_2017)

test <- sc_s1701_2017 %>%
  filter(variable == "S1701_C02_001") %>%
  mutate(poverty_percentage = (estimate / summary) * 100)

mapview(test, zcol = "poverty_percentage", legend = TRUE)

under_5 <- sc_s1701_2017 %>%
  filter(variable == "S1701_C03_003") %>%
  mutate("Under 5 Percent in Poverty" = estimate)

mapview(under_5, zcol = "Under 5 Percent in Poverty", legend = TRUE)
