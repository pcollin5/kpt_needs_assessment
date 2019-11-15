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

    Carter_dp02_2017 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP02", year = 2017)

    Carter_dp03_2017 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP03", year = 2017)

    Carter_dp04_2017 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP04", year = 2017)

    Carter_dp05_2017 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP05", year = 2017)
    
  ##greene##
    
    
    Greene_dp02_2017 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP02", year = 2017)
    
    Greene_dp03_2017 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP03", year = 2017)
    
    Greene_dp04_2017 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP04", year = 2017)
    
    Greene_dp05_2017 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP05", year = 2017)
    
  ##hancock
    
    Hancock_dp02_2017 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP02", year = 2017)
    
    Hancock_dp03_2017 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP03", year = 2017)
    
    Hancock_dp04_2017 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP04", year = 2017)
    
    Hancock_dp05_2017 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP05", year = 2017)
    
  ##hawkins
    
    Hawkins_dp02_2017 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP02", year = 2017)
    
    Hawkins_dp03_2017 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP03", year = 2017)
    
    Hawkins_dp04_2017 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP04", year = 2017)
    
    Hawkins_dp05_2017 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP05", year = 2017)
    
    
  ##johnson
    
    Johnson_dp02_2017 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP02", year = 2017)
    
    Johnson_dp03_2017 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP03", year = 2017)
    
    Johnson_dp04_2017 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP04", year = 2017)
    
    Johnson_dp05_2017 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP05", year = 2017)
    
  ##sullivan
  
    sullivan_dp02_2017 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP02", year = 2017)

    sullivan_dp03_2017 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP03", year = 2017)

    sullivan_dp04_2017 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP04", year = 2017)

    sullivan_dp05_2017 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP05", year = 2017)

  ##washington
    
    
    Washington_dp02_2017 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP02", year = 2017)
    
    Washington_dp03_2017 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP03", year = 2017)
    
    Washington_dp04_2017 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP04", year = 2017)
    
    Washington_dp05_2017 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP05", year = 2017)
    
  ##unicoi
    
    Unicoi_dp02_2017 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP02", year = 2017)
    
    Unicoi_dp03_2017 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP03", year = 2017)
    
    Unicoi_dp04_2017 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP04", year = 2017)
    
    Unicoi_dp05_2017 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP05", year = 2017)

    
###make it better
    
    new_names <- c("variable", "label", "concept")
    
    names(dp_table_variables) <- new_names

    View(dp_table_variables)
    
