library(acs)
library(tidyverse)
library(tidycensus)
library(urbnmapr)
library(tigris)
library(leaflet)
library(mapview)

###get data profile tables###

counties_served

dp_table_variables <- load_variables(2017, "acs5/profile", cache = TRUE)

View(dp_table_variables)

  ##carter##

    Carter_dp02_2017 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP02", year = 2017, geometry = TRUE)

    Carter_dp03_2017 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP03", year = 2017, geometry = TRUE)

    Carter_dp04_2017 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP04", year = 2017, geometry = TRUE)

    Carter_dp05_2017 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP05", year = 2017, geometry = TRUE)
    
  ##greene##
    
    
    Greene_dp02_2017 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP02", year = 2017, geometry = TRUE)
    
    Greene_dp03_2017 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP03", year = 2017, geometry = TRUE)
    
    Greene_dp04_2017 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP04", year = 2017, geometry = TRUE)
    
    Greene_dp05_2017 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP05", year = 2017, geometry = TRUE)
    
  ##hancock
    
    Hancock_dp02_2017 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP02", year = 2017, geometry = TRUE)
    
    Hancock_dp03_2017 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP03", year = 2017, geometry = TRUE)
    
    Hancock_dp04_2017 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP04", year = 2017, geometry = TRUE)
    
    Hancock_dp05_2017 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP05", year = 2017, geometry = TRUE)
    
  ##hawkins
    
    Hawkins_dp02_2017 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP02", year = 2017, geometry = TRUE)
    
    Hawkins_dp03_2017 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP03", year = 2017, geometry = TRUE)
    
    Hawkins_dp04_2017 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP04", year = 2017, geometry = TRUE)
    
    Hawkins_dp05_2017 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP05", year = 2017, geometry = TRUE)
    
    
  ##johnson
    
    Johnson_dp02_2017 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP02", year = 2017, geometry = TRUE)
    
    Johnson_dp03_2017 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP03", year = 2017, geometry = TRUE)
    
    Johnson_dp04_2017 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP04", year = 2017, geometry = TRUE)
    
    Johnson_dp05_2017 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP05", year = 2017, geometry = TRUE)
    
  ##sullivan
  
    Sullivan_dp02_2017 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP02", year = 2017, geometry = TRUE)

    Sullivan_dp03_2017 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP03", year = 2017, geometry = TRUE)

    Sullivan_dp04_2017 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP04", year = 2017, geometry = TRUE)

    Sullivan_dp05_2017 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP05", year = 2017, geometry = TRUE)

  ##washington
    
    
    Washington_dp02_2017 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP02", year = 2017, geometry = TRUE)
    
    Washington_dp03_2017 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP03", year = 2017, geometry = TRUE)
    
    Washington_dp04_2017 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP04", year = 2017, geometry = TRUE)
    
    Washington_dp05_2017 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP05", year = 2017, geometry = TRUE)
    
  ##unicoi
    
    Unicoi_dp02_2017 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP02", year = 2017, geometry = TRUE)
    
    Unicoi_dp03_2017 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP03", year = 2017, geometry = TRUE)
    
    Unicoi_dp04_2017 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP04", year = 2017, geometry = TRUE)
    
    Unicoi_dp05_2017 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP05", year = 2017, geometry = TRUE)

    
###make it better
    
    new_names <- c("variable", "label", "concept")
    
    names(dp_table_variables) <- new_names

    View(dp_table_variables)

##join the variables names and data together
    
  ##carter
    
    Carter_dp02 <- inner_join(Carter_dp02_2017, dp_table_variables, by = "variable")
  
    Carter_dp03 <- inner_join(Carter_dp03_2017, dp_table_variables, by = "variable")
    
    Carter_dp04 <- inner_join(Carter_dp04_2017, dp_table_variables, by = "variable")
    
    Carter_dp05 <- inner_join(Carter_dp05_2017, dp_table_variables, by = "variable")
  
  ##greene
    
    Greene_dp02 <- inner_join(Greene_dp02_2017, dp_table_variables, by = "variable")
    
    Greene_dp03 <- inner_join(Greene_dp03_2017, dp_table_variables, by = "variable")
    
    Greene_dp04 <- inner_join(Greene_dp04_2017, dp_table_variables, by = "variable")
    
    Greene_dp05 <- inner_join(Greene_dp05_2017, dp_table_variables, by = "variable")
    
  ##hancock
    
    Hancock_dp02 <- inner_join(Hancock_dp02_2017, dp_table_variables, by = "variable")
    
    Hancock_dp03 <- inner_join(Hancock_dp03_2017, dp_table_variables, by = "variable")
    
    Hancock_dp04 <- inner_join(Hancock_dp04_2017, dp_table_variables, by = "variable")
    
    Hancock_dp05 <- inner_join(Hancock_dp05_2017, dp_table_variables, by = "variable")
    
  ##hawkins  
    
    Hawkins_dp02 <- inner_join(Hawkins_dp02_2017, dp_table_variables, by = "variable")
    
    Hawkins_dp03 <- inner_join(Hawkins_dp03_2017, dp_table_variables, by = "variable")
    
    Hawkins_dp04 <- inner_join(Hawkins_dp04_2017, dp_table_variables, by = "variable")
    
    Hawkins_dp05 <- inner_join(Hawkins_dp05_2017, dp_table_variables, by = "variable")
    
  ##johnson
    
    Johnson_dp02 <- inner_join(Johnson_dp02_2017, dp_table_variables, by = "variable")
    
    Johnson_dp03 <- inner_join(Johnson_dp03_2017, dp_table_variables, by = "variable")
    
    Johnson_dp04 <- inner_join(Johnson_dp04_2017, dp_table_variables, by = "variable")
    
    Johnson_dp05 <- inner_join(Johnson_dp05_2017, dp_table_variables, by = "variable")
    
  ##sullivan
    
    Sullivan_dp02 <- inner_join(Sullivan_dp02_2017, dp_table_variables, by = "variable")
    
    Sullivan_dp03 <- inner_join(Sullivan_dp03_2017, dp_table_variables, by = "variable")
    
    Sullivan_dp04 <- inner_join(Sullivan_dp04_2017, dp_table_variables, by = "variable")
    
    Sullivan_dp05 <- inner_join(Sullivan_dp05_2017, dp_table_variables, by = "variable")
    
  ##washington
    
    Washington_dp02 <- inner_join(Washington_dp02_2017, dp_table_variables, by = "variable")
    
    Washington_dp03 <- inner_join(Washington_dp03_2017, dp_table_variables, by = "variable")
    
    Washington_dp04 <- inner_join(Washington_dp04_2017, dp_table_variables, by = "variable")
    
    Washington_dp05 <- inner_join(Washington_dp05_2017, dp_table_variables, by = "variable")
    
  ##unicoi
    
    Unicoi_dp02 <- inner_join(Unicoi_dp02_2017, dp_table_variables, by = "variable")
    
    Unicoi_dp03 <- inner_join(Unicoi_dp03_2017, dp_table_variables, by = "variable")
    
    Unicoi_dp04 <- inner_join(Unicoi_dp04_2017, dp_table_variables, by = "variable")
    
    Unicoi_dp05 <- inner_join(Unicoi_dp05_2017, dp_table_variables, by = "variable")
    
    
####so heres all the data
    
    
    dp02_all_counties <- rbind(Carter_dp02, Greene_dp02, Hancock_dp02, Hawkins_dp02, Johnson_dp02, Sullivan_dp02, Washington_dp02, Unicoi_dp02)

    dp03_all_counties <- rbind(Carter_dp03, Greene_dp03, Hancock_dp03, Hawkins_dp03, Johnson_dp03, Sullivan_dp03, Washington_dp03, Unicoi_dp03)
    
    dp04_all_counties <- rbind(Carter_dp04, Greene_dp04, Hancock_dp04, Hawkins_dp04, Johnson_dp04, Sullivan_dp04, Washington_dp04, Unicoi_dp04)
    
    dp05_all_counties <- rbind(Carter_dp05, Greene_dp05, Hancock_dp05, Hawkins_dp05, Johnson_dp05, Sullivan_dp05, Washington_dp05, Unicoi_dp05)
    
####lets find some shit in dp02####
    
    ####DP02 IS THE TABLE OF SELECTED SOCIAL CHARACTERISTICS###
    
    
