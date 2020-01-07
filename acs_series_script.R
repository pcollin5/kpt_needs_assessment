###data for the past 5 years of acs to show trends###

####load packages####

library(acs)
library(tidyverse)
library(tidycensus)
library(tigris)
library(leaflet)
library(mapview)
library(tmap)
library(gganimate)

####need variables####
dp_table_variables <- load_variables(2017, "acs5/profile", cache = TRUE)

View(dp_table_variables)

new_names <- c("variable", "label", "concept")

names(dp_table_variables) <- new_names

##varibales need new names to join and maker better##


####load the data and clean it####
 
   ####2017####
  
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
        
      
  ####2016####
      
    ##carter##
      
      Carter_dp02_2016 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP02", year = 2016, geometry = TRUE)
      
      Carter_dp03_2016 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP03", year = 2016, geometry = TRUE)
      
      Carter_dp04_2016 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP04", year = 2016, geometry = TRUE)
      
      Carter_dp05_2016 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP05", year = 2016, geometry = TRUE)
      
    ##greene##
      
      
      Greene_dp02_2016 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP02", year = 2016, geometry = TRUE)
      
      Greene_dp03_2016 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP03", year = 2016, geometry = TRUE)
      
      Greene_dp04_2016 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP04", year = 2016, geometry = TRUE)
      
      Greene_dp05_2016 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP05", year = 2016, geometry = TRUE)
      
    ##hancock
      
      Hancock_dp02_2016 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP02", year = 2016, geometry = TRUE)
      
      Hancock_dp03_2016 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP03", year = 2016, geometry = TRUE)
      
      Hancock_dp04_2016 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP04", year = 2016, geometry = TRUE)
      
      Hancock_dp05_2016 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP05", year = 2016, geometry = TRUE)
      
    ##hawkins
      
      Hawkins_dp02_2016 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP02", year = 2016, geometry = TRUE)
      
      Hawkins_dp03_2016 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP03", year = 2016, geometry = TRUE)
      
      Hawkins_dp04_2016 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP04", year = 2016, geometry = TRUE)
      
      Hawkins_dp05_2016 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP05", year = 2016, geometry = TRUE)
      
      
    ##johnson
      
      Johnson_dp02_2016 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP02", year = 2016, geometry = TRUE)
      
      Johnson_dp03_2016 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP03", year = 2016, geometry = TRUE)
      
      Johnson_dp04_2016 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP04", year = 2016, geometry = TRUE)
      
      Johnson_dp05_2016 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP05", year = 2016, geometry = TRUE)
      
      ##sullivan
      
      Sullivan_dp02_2016 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP02", year = 2016, geometry = TRUE)
      
      Sullivan_dp03_2016 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP03", year = 2016, geometry = TRUE)
      
      Sullivan_dp04_2016 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP04", year = 2016, geometry = TRUE)
      
      Sullivan_dp05_2016 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP05", year = 2016, geometry = TRUE)
      
      ##washington
      
      
      Washington_dp02_2016 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP02", year = 2016, geometry = TRUE)
      
      Washington_dp03_2016 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP03", year = 2016, geometry = TRUE)
      
      Washington_dp04_2016 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP04", year = 2016, geometry = TRUE)
      
      Washington_dp05_2016 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP05", year = 2016, geometry = TRUE)
      
      ##unicoi
      
      Unicoi_dp02_2016 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP02", year = 2016, geometry = TRUE)
      
      Unicoi_dp03_2016 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP03", year = 2016, geometry = TRUE)
      
      Unicoi_dp04_2016 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP04", year = 2016, geometry = TRUE)
      
      Unicoi_dp05_2016 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP05", year = 2016, geometry = TRUE)
      
  ####2015####
      
      ##carter##
      
      Carter_dp02_2015 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP02", year = 2015, geometry = TRUE)
      
      Carter_dp03_2015 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP03", year = 2015, geometry = TRUE)
      
      Carter_dp04_2015 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP04", year = 2015, geometry = TRUE)
      
      Carter_dp05_2015 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP05", year = 2015, geometry = TRUE)
      
      ##greene##
      
      
      Greene_dp02_2015 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP02", year = 2015, geometry = TRUE)
      
      Greene_dp03_2015 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP03", year = 2015, geometry = TRUE)
      
      Greene_dp04_2015 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP04", year = 2015, geometry = TRUE)
      
      Greene_dp05_2015 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP05", year = 2015, geometry = TRUE)
      
      ##hancock
      
      Hancock_dp02_2015 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP02", year = 2015, geometry = TRUE)
      
      Hancock_dp03_2015 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP03", year = 2015, geometry = TRUE)
      
      Hancock_dp04_2015 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP04", year = 2015, geometry = TRUE)
      
      Hancock_dp05_2015 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP05", year = 2015, geometry = TRUE)
      
      ##hawkins
      
      Hawkins_dp02_2015 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP02", year = 2015, geometry = TRUE)
      
      Hawkins_dp03_2015 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP03", year = 2015, geometry = TRUE)
      
      Hawkins_dp04_2015 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP04", year = 2015, geometry = TRUE)
      
      Hawkins_dp05_2015 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP05", year = 2015, geometry = TRUE)
      
      
      ##johnson
      
      Johnson_dp02_2015 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP02", year = 2015, geometry = TRUE)
      
      Johnson_dp03_2015 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP03", year = 2015, geometry = TRUE)
      
      Johnson_dp04_2015 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP04", year = 2015, geometry = TRUE)
      
      Johnson_dp05_2015 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP05", year = 2015, geometry = TRUE)
      
      ##sullivan
      
      Sullivan_dp02_2015 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP02", year = 2015, geometry = TRUE)
      
      Sullivan_dp03_2015 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP03", year = 2015, geometry = TRUE)
      
      Sullivan_dp04_2015 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP04", year = 2015, geometry = TRUE)
      
      Sullivan_dp05_2015 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP05", year = 2015, geometry = TRUE)
      
      ##washington
      
      
      Washington_dp02_2015 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP02", year = 2015, geometry = TRUE)
      
      Washington_dp03_2015 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP03", year = 2015, geometry = TRUE)
      
      Washington_dp04_2015 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP04", year = 2015, geometry = TRUE)
      
      Washington_dp05_2015 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP05", year = 2015, geometry = TRUE)
      
      ##unicoi
      
      Unicoi_dp02_2015 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP02", year = 2015, geometry = TRUE)
      
      Unicoi_dp03_2015 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP03", year = 2015, geometry = TRUE)
      
      Unicoi_dp04_2015 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP04", year = 2015, geometry = TRUE)
      
      Unicoi_dp05_2015 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP05", year = 2015, geometry = TRUE)
      
  ####2014####
      
      ##carter##
      
      Carter_dp02_2014 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP02", year = 2014, geometry = TRUE)
      
      Carter_dp03_2014 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP03", year = 2014, geometry = TRUE)
      
      Carter_dp04_2014 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP04", year = 2014, geometry = TRUE)
      
      Carter_dp05_2014 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP05", year = 2014, geometry = TRUE)
      
      ##greene##
      
      
      Greene_dp02_2014 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP02", year = 2014, geometry = TRUE)
      
      Greene_dp03_2014 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP03", year = 2014, geometry = TRUE)
      
      Greene_dp04_2014 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP04", year = 2014, geometry = TRUE)
      
      Greene_dp05_2014 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP05", year = 2014, geometry = TRUE)
      
      ##hancock
      
      Hancock_dp02_2014 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP02", year = 2014, geometry = TRUE)
      
      Hancock_dp03_2014 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP03", year = 2014, geometry = TRUE)
      
      Hancock_dp04_2014 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP04", year = 2014, geometry = TRUE)
      
      Hancock_dp05_2014 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP05", year = 2014, geometry = TRUE)
      
      ##hawkins
      
      Hawkins_dp02_2014 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP02", year = 2014, geometry = TRUE)
      
      Hawkins_dp03_2014 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP03", year = 2014, geometry = TRUE)
      
      Hawkins_dp04_2014 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP04", year = 2014, geometry = TRUE)
      
      Hawkins_dp05_2014 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP05", year = 2014, geometry = TRUE)
      
      
      ##johnson
      
      Johnson_dp02_2014 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP02", year = 2014, geometry = TRUE)
      
      Johnson_dp03_2014 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP03", year = 2014, geometry = TRUE)
      
      Johnson_dp04_2014 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP04", year = 2014, geometry = TRUE)
      
      Johnson_dp05_2014 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP05", year = 2014, geometry = TRUE)
      
      ##sullivan
      
      Sullivan_dp02_2014 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP02", year = 2014, geometry = TRUE)
      
      Sullivan_dp03_2014 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP03", year = 2014, geometry = TRUE)
      
      Sullivan_dp04_2014 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP04", year = 2014, geometry = TRUE)
      
      Sullivan_dp05_2014 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP05", year = 2014, geometry = TRUE)
      
      ##washington
      
      
      Washington_dp02_2014 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP02", year = 2014, geometry = TRUE)
      
      Washington_dp03_2014 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP03", year = 2014, geometry = TRUE)
      
      Washington_dp04_2014 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP04", year = 2014, geometry = TRUE)
      
      Washington_dp05_2014 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP05", year = 2014, geometry = TRUE)
      
      ##unicoi
      
      Unicoi_dp02_2014 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP02", year = 2014, geometry = TRUE)
      
      Unicoi_dp03_2014 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP03", year = 2014, geometry = TRUE)
      
      Unicoi_dp04_2014 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP04", year = 2014, geometry = TRUE)
      
      Unicoi_dp05_2014 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP05", year = 2014, geometry = TRUE)
      
  ####2013####
      
      ##carter##
      
      Carter_dp02_2013 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP02", year = 2013, geometry = TRUE)
      
      Carter_dp03_2013 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP03", year = 2013, geometry = TRUE)
      
      Carter_dp04_2013 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP04", year = 2013, geometry = TRUE)
      
      Carter_dp05_2013 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP05", year = 2013, geometry = TRUE)
      
      ##greene##
      
      
      Greene_dp02_2013 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP02", year = 2013, geometry = TRUE)
      
      Greene_dp03_2013 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP03", year = 2013, geometry = TRUE)
      
      Greene_dp04_2013 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP04", year = 2013, geometry = TRUE)
      
      Greene_dp05_2013 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP05", year = 2013, geometry = TRUE)
      
      ##hancock
      
      Hancock_dp02_2013 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP02", year = 2013, geometry = TRUE)
      
      Hancock_dp03_2013 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP03", year = 2013, geometry = TRUE)
      
      Hancock_dp04_2013 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP04", year = 2013, geometry = TRUE)
      
      Hancock_dp05_2013 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP05", year = 2013, geometry = TRUE)
      
      ##hawkins
      
      Hawkins_dp02_2013 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP02", year = 2013, geometry = TRUE)
      
      Hawkins_dp03_2013 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP03", year = 2013, geometry = TRUE)
      
      Hawkins_dp04_2013 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP04", year = 2013, geometry = TRUE)
      
      Hawkins_dp05_2013 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP05", year = 2013, geometry = TRUE)
      
      
      ##johnson
      
      Johnson_dp02_2013 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP02", year = 2013, geometry = TRUE)
      
      Johnson_dp03_2013 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP03", year = 2013, geometry = TRUE)
      
      Johnson_dp04_2013 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP04", year = 2013, geometry = TRUE)
      
      Johnson_dp05_2013 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP05", year = 2013, geometry = TRUE)
      
      ##sullivan
      
      Sullivan_dp02_2013 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP02", year = 2013, geometry = TRUE)
      
      Sullivan_dp03_2013 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP03", year = 2013, geometry = TRUE)
      
      Sullivan_dp04_2013 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP04", year = 2013, geometry = TRUE)
      
      Sullivan_dp05_2013 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP05", year = 2013, geometry = TRUE)

      ##washington

      
      Washington_dp02_2013 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP02", year = 2013, geometry = TRUE)
      
      Washington_dp03_2013 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP03", year = 2013, geometry = TRUE)
      
      Washington_dp04_2013 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP04", year = 2013, geometry = TRUE)
      
      Washington_dp05_2013 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP05", year = 2013, geometry = TRUE)
  
      ##unicoi
      
      Unicoi_dp02_2013 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP02", year = 2013, geometry = TRUE)
      
      Unicoi_dp03_2013 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP03", year = 2013, geometry = TRUE)
      
      Unicoi_dp04_2013 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP04", year = 2013, geometry = TRUE)
      
      Unicoi_dp05_2013 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP05", year = 2013, geometry = TRUE)


  ####variable to table joining code####

    ####2017####

      ##carter

      Carter_dp02_17 <- inner_join(Carter_dp02_2017, dp_table_variables, by = "variable")
      
      Carter_dp03_17 <- inner_join(Carter_dp03_2017, dp_table_variables, by = "variable")
      
      Carter_dp04_17 <- inner_join(Carter_dp04_2017, dp_table_variables, by = "variable")
      
      Carter_dp05_17 <- inner_join(Carter_dp05_2017, dp_table_variables, by = "variable")

      ##greene

      Greene_dp02_17 <- inner_join(Greene_dp02_2017, dp_table_variables, by = "variable")

      Greene_dp03_17 <- inner_join(Greene_dp03_2017, dp_table_variables, by = "variable")

      Greene_dp04_17 <- inner_join(Greene_dp04_2017, dp_table_variables, by = "variable")

      Greene_dp05_17 <- inner_join(Greene_dp05_2017, dp_table_variables, by = "variable")

      ##hancock

      Hancock_dp02_17 <- inner_join(Hancock_dp02_2017, dp_table_variables, by = "variable")

      Hancock_dp03_17 <- inner_join(Hancock_dp03_2017, dp_table_variables, by = "variable")

      Hancock_dp04_17 <- inner_join(Hancock_dp04_2017, dp_table_variables, by = "variable")

      Hancock_dp05_17 <- inner_join(Hancock_dp05_2017, dp_table_variables, by = "variable")

      ##hawkins  

      Hawkins_dp02_17 <- inner_join(Hawkins_dp02_2017, dp_table_variables, by = "variable")

      Hawkins_dp03_17 <- inner_join(Hawkins_dp03_2017, dp_table_variables, by = "variable")

      Hawkins_dp04_17 <- inner_join(Hawkins_dp04_2017, dp_table_variables, by = "variable")

      Hawkins_dp05_17 <- inner_join(Hawkins_dp05_2017, dp_table_variables, by = "variable")

      ##johnson

      Johnson_dp02_17 <- inner_join(Johnson_dp02_2017, dp_table_variables, by = "variable")

      Johnson_dp03_17 <- inner_join(Johnson_dp03_2017, dp_table_variables, by = "variable")

      Johnson_dp04_17 <- inner_join(Johnson_dp04_2017, dp_table_variables, by = "variable")

      Johnson_dp05_17 <- inner_join(Johnson_dp05_2017, dp_table_variables, by = "variable")

      ##sullivan

      Sullivan_dp02_17 <- inner_join(Sullivan_dp02_2017, dp_table_variables, by = "variable")

      Sullivan_dp03_17 <- inner_join(Sullivan_dp03_2017, dp_table_variables, by = "variable")

      Sullivan_dp04_17 <- inner_join(Sullivan_dp04_2017, dp_table_variables, by = "variable")

      Sullivan_dp05_17 <- inner_join(Sullivan_dp05_2017, dp_table_variables, by = "variable")

      ##washington

      Washington_dp02_17 <- inner_join(Washington_dp02_2017, dp_table_variables, by = "variable")

      Washington_dp03_17 <- inner_join(Washington_dp03_2017, dp_table_variables, by = "variable")

      Washington_dp04_17 <- inner_join(Washington_dp04_2017, dp_table_variables, by = "variable")

      Washington_dp05_17 <- inner_join(Washington_dp05_2017, dp_table_variables, by = "variable")

      ##unicoi

      Unicoi_dp02_17 <- inner_join(Unicoi_dp02_2017, dp_table_variables, by = "variable")

      Unicoi_dp03_17 <- inner_join(Unicoi_dp03_2017, dp_table_variables, by = "variable")

      Unicoi_dp04_17 <- inner_join(Unicoi_dp04_2017, dp_table_variables, by = "variable")

      Unicoi_dp05_17 <- inner_join(Unicoi_dp05_2017, dp_table_variables, by = "variable")

  ###2016####

      ##carter

      Carter_dp02_16 <- inner_join(Carter_dp02_2016, dp_table_variables, by = "variable")

      Carter_dp03_16 <- inner_join(Carter_dp03_2016, dp_table_variables, by = "variable")

      Carter_dp04_16 <- inner_join(Carter_dp04_2016, dp_table_variables, by = "variable")

      Carter_dp05_16 <- inner_join(Carter_dp05_2016, dp_table_variables, by = "variable")

      ##greene

      Greene_dp02_16 <- inner_join(Greene_dp02_2016, dp_table_variables, by = "variable")

      Greene_dp03_16 <- inner_join(Greene_dp03_2016, dp_table_variables, by = "variable")

      Greene_dp04_16 <- inner_join(Greene_dp04_2016, dp_table_variables, by = "variable")

      Greene_dp05_16 <- inner_join(Greene_dp05_2016, dp_table_variables, by = "variable")

      ##hancock

      Hancock_dp02_16 <- inner_join(Hancock_dp02_2016, dp_table_variables, by = "variable")

      Hancock_dp03_16 <- inner_join(Hancock_dp03_2016, dp_table_variables, by = "variable")

      Hancock_dp04_16 <- inner_join(Hancock_dp04_2016, dp_table_variables, by = "variable")

      Hancock_dp05_16 <- inner_join(Hancock_dp05_2016, dp_table_variables, by = "variable")

      ##hawkins  

      Hawkins_dp02_16 <- inner_join(Hawkins_dp02_2016, dp_table_variables, by = "variable")

      Hawkins_dp03_16 <- inner_join(Hawkins_dp03_2016, dp_table_variables, by = "variable")

      Hawkins_dp04_16 <- inner_join(Hawkins_dp04_2016, dp_table_variables, by = "variable")

      Hawkins_dp05_16 <- inner_join(Hawkins_dp05_2016, dp_table_variables, by = "variable")

      ##johnson

      Johnson_dp02_16 <- inner_join(Johnson_dp02_2016, dp_table_variables, by = "variable")

      Johnson_dp03_16 <- inner_join(Johnson_dp03_2016, dp_table_variables, by = "variable")

      Johnson_dp04_16 <- inner_join(Johnson_dp04_2016, dp_table_variables, by = "variable")

      Johnson_dp05_16 <- inner_join(Johnson_dp05_2016, dp_table_variables, by = "variable")

      ##sullivan

      Sullivan_dp02_16 <- inner_join(Sullivan_dp02_2016, dp_table_variables, by = "variable")

      Sullivan_dp03_16 <- inner_join(Sullivan_dp03_2016, dp_table_variables, by = "variable")

      Sullivan_dp04_16 <- inner_join(Sullivan_dp04_2016, dp_table_variables, by = "variable")

      Sullivan_dp05_16 <- inner_join(Sullivan_dp05_2016, dp_table_variables, by = "variable")

      ##washington

      Washington_dp02_16 <- inner_join(Washington_dp02_2016, dp_table_variables, by = "variable")

      Washington_dp03_16 <- inner_join(Washington_dp03_2016, dp_table_variables, by = "variable")

      Washington_dp04_16 <- inner_join(Washington_dp04_2016, dp_table_variables, by = "variable")

      Washington_dp05_16 <- inner_join(Washington_dp05_2016, dp_table_variables, by = "variable")

      ##unicoi

      Unicoi_dp02_16 <- inner_join(Unicoi_dp02_2016, dp_table_variables, by = "variable")

      Unicoi_dp03_16 <- inner_join(Unicoi_dp03_2016, dp_table_variables, by = "variable")

      Unicoi_dp04_16 <- inner_join(Unicoi_dp04_2016, dp_table_variables, by = "variable")

      Unicoi_dp05_16 <- inner_join(Unicoi_dp05_2016, dp_table_variables, by = "variable")

  ####2015####

      ##carter

      Carter_dp02_15 <- inner_join(Carter_dp02_2015, dp_table_variables, by = "variable")

      Carter_dp03_15 <- inner_join(Carter_dp03_2015, dp_table_variables, by = "variable")

      Carter_dp04_15 <- inner_join(Carter_dp04_2015, dp_table_variables, by = "variable")

      Carter_dp05_15 <- inner_join(Carter_dp05_2015, dp_table_variables, by = "variable")

      ##greene

      Greene_dp02_15 <- inner_join(Greene_dp02_2015, dp_table_variables, by = "variable")

      Greene_dp03_15 <- inner_join(Greene_dp03_2015, dp_table_variables, by = "variable")

      Greene_dp04_15 <- inner_join(Greene_dp04_2015, dp_table_variables, by = "variable")

      Greene_dp05_15 <- inner_join(Greene_dp05_2015, dp_table_variables, by = "variable")

      ##hancock

      Hancock_dp02_15 <- inner_join(Hancock_dp02_2015, dp_table_variables, by = "variable")
  
      Hancock_dp03_15 <- inner_join(Hancock_dp03_2015, dp_table_variables, by = "variable")

      Hancock_dp04_15 <- inner_join(Hancock_dp04_2015, dp_table_variables, by = "variable")

      Hancock_dp05_15 <- inner_join(Hancock_dp05_2015, dp_table_variables, by = "variable")

      ##hawkins  

      Hawkins_dp02_15 <- inner_join(Hawkins_dp02_2015, dp_table_variables, by = "variable")

      Hawkins_dp03_15 <- inner_join(Hawkins_dp03_2015, dp_table_variables, by = "variable")

      Hawkins_dp04_15 <- inner_join(Hawkins_dp04_2015, dp_table_variables, by = "variable")

      Hawkins_dp05_15 <- inner_join(Hawkins_dp05_2015, dp_table_variables, by = "variable")

      ##johnson

      Johnson_dp02_15 <- inner_join(Johnson_dp02_2015, dp_table_variables, by = "variable")

      Johnson_dp03_15 <- inner_join(Johnson_dp03_2015, dp_table_variables, by = "variable")

      Johnson_dp04_15 <- inner_join(Johnson_dp04_2015, dp_table_variables, by = "variable")

      Johnson_dp05_15 <- inner_join(Johnson_dp05_2015, dp_table_variables, by = "variable")

      ##sullivan

      Sullivan_dp02_15 <- inner_join(Sullivan_dp02_2015, dp_table_variables, by = "variable")

      Sullivan_dp03_15 <- inner_join(Sullivan_dp03_2015, dp_table_variables, by = "variable")

      Sullivan_dp04_15 <- inner_join(Sullivan_dp04_2015, dp_table_variables, by = "variable")

      Sullivan_dp05_15 <- inner_join(Sullivan_dp05_2015, dp_table_variables, by = "variable")

      ##washington

      Washington_dp02_15 <- inner_join(Washington_dp02_2015, dp_table_variables, by = "variable")

      Washington_dp03_15 <- inner_join(Washington_dp03_2015, dp_table_variables, by = "variable")

      Washington_dp04_15 <- inner_join(Washington_dp04_2015, dp_table_variables, by = "variable")

      Washington_dp05_15 <- inner_join(Washington_dp05_2015, dp_table_variables, by = "variable")

      ##unicoi

      Unicoi_dp02_15 <- inner_join(Unicoi_dp02_2015, dp_table_variables, by = "variable")

      Unicoi_dp03_15 <- inner_join(Unicoi_dp03_2015, dp_table_variables, by = "variable")

      Unicoi_dp04_15 <- inner_join(Unicoi_dp04_2015, dp_table_variables, by = "variable")

      Unicoi_dp05_15 <- inner_join(Unicoi_dp05_2015, dp_table_variables, by = "variable")

  ####2014####


      ##carter

      Carter_dp02_14 <- inner_join(Carter_dp02_2014, dp_table_variables, by = "variable")

      Carter_dp03_14 <- inner_join(Carter_dp03_2014, dp_table_variables, by = "variable")

      Carter_dp04_14 <- inner_join(Carter_dp04_2014, dp_table_variables, by = "variable")

      Carter_dp05_14 <- inner_join(Carter_dp05_2014, dp_table_variables, by = "variable")

      ##greene

      Greene_dp02_14 <- inner_join(Greene_dp02_2014, dp_table_variables, by = "variable")

      Greene_dp03_14 <- inner_join(Greene_dp03_2014, dp_table_variables, by = "variable")

      Greene_dp04_14 <- inner_join(Greene_dp04_2014, dp_table_variables, by = "variable")

      Greene_dp05_14 <- inner_join(Greene_dp05_2014, dp_table_variables, by = "variable")

      ##hancock

      Hancock_dp02_14 <- inner_join(Hancock_dp02_2014, dp_table_variables, by = "variable")

      Hancock_dp03_14 <- inner_join(Hancock_dp03_2014, dp_table_variables, by = "variable")

      Hancock_dp04_14 <- inner_join(Hancock_dp04_2014, dp_table_variables, by = "variable")

      Hancock_dp05_14 <- inner_join(Hancock_dp05_2014, dp_table_variables, by = "variable")

      ##hawkins  

      Hawkins_dp02_14 <- inner_join(Hawkins_dp02_2014, dp_table_variables, by = "variable")

      Hawkins_dp03_14 <- inner_join(Hawkins_dp03_2014, dp_table_variables, by = "variable")

      Hawkins_dp04_14 <- inner_join(Hawkins_dp04_2014, dp_table_variables, by = "variable")

      Hawkins_dp05_14 <- inner_join(Hawkins_dp05_2014, dp_table_variables, by = "variable")

      ##johnson

      Johnson_dp02_14 <- inner_join(Johnson_dp02_2014, dp_table_variables, by = "variable")

      Johnson_dp03_14 <- inner_join(Johnson_dp03_2014, dp_table_variables, by = "variable")

      Johnson_dp04_14 <- inner_join(Johnson_dp04_2014, dp_table_variables, by = "variable")

      Johnson_dp05_14 <- inner_join(Johnson_dp05_2014, dp_table_variables, by = "variable")

      ##sullivan

      Sullivan_dp02_14 <- inner_join(Sullivan_dp02_2014, dp_table_variables, by = "variable")
  
      Sullivan_dp03_14 <- inner_join(Sullivan_dp03_2014, dp_table_variables, by = "variable")

      Sullivan_dp04_14 <- inner_join(Sullivan_dp04_2014, dp_table_variables, by = "variable")

      Sullivan_dp05_14 <- inner_join(Sullivan_dp05_2014, dp_table_variables, by = "variable")

      ##washington

      Washington_dp02_14 <- inner_join(Washington_dp02_2014, dp_table_variables, by = "variable")

      Washington_dp03_14 <- inner_join(Washington_dp03_2014, dp_table_variables, by = "variable")

      Washington_dp04_14 <- inner_join(Washington_dp04_2014, dp_table_variables, by = "variable")

      Washington_dp05_14 <- inner_join(Washington_dp05_2014, dp_table_variables, by = "variable")

      ##unicoi

      Unicoi_dp02_14 <- inner_join(Unicoi_dp02_2014, dp_table_variables, by = "variable")

      Unicoi_dp03_14 <- inner_join(Unicoi_dp03_2014, dp_table_variables, by = "variable")

      Unicoi_dp04_14 <- inner_join(Unicoi_dp04_2014, dp_table_variables, by = "variable")

      Unicoi_dp05_14 <- inner_join(Unicoi_dp05_2014, dp_table_variables, by = "variable")

  ####2013####

      ##carter

      Carter_dp02_13 <- inner_join(Carter_dp02_2013, dp_table_variables, by = "variable")

      Carter_dp03_13 <- inner_join(Carter_dp03_2013, dp_table_variables, by = "variable")

      Carter_dp04_13 <- inner_join(Carter_dp04_2013, dp_table_variables, by = "variable")

      Carter_dp05_13 <- inner_join(Carter_dp05_2013, dp_table_variables, by = "variable")

      ##greene

      Greene_dp02_13 <- inner_join(Greene_dp02_2013, dp_table_variables, by = "variable")

      Greene_dp03_13 <- inner_join(Greene_dp03_2013, dp_table_variables, by = "variable")

      Greene_dp04_13 <- inner_join(Greene_dp04_2013, dp_table_variables, by = "variable")

      Greene_dp05_13 <- inner_join(Greene_dp05_2013, dp_table_variables, by = "variable")

      ##hancock

      Hancock_dp02_13 <- inner_join(Hancock_dp02_2013, dp_table_variables, by = "variable")

      Hancock_dp03_13 <- inner_join(Hancock_dp03_2013, dp_table_variables, by = "variable")

      Hancock_dp04_13 <- inner_join(Hancock_dp04_2013, dp_table_variables, by = "variable")

      Hancock_dp05_13 <- inner_join(Hancock_dp05_2013, dp_table_variables, by = "variable")

      ##hawkins  

      Hawkins_dp02_13 <- inner_join(Hawkins_dp02_2013, dp_table_variables, by = "variable")

      Hawkins_dp03_13 <- inner_join(Hawkins_dp03_2013, dp_table_variables, by = "variable")

      Hawkins_dp04_13 <- inner_join(Hawkins_dp04_2013, dp_table_variables, by = "variable")

      Hawkins_dp05_13 <- inner_join(Hawkins_dp05_2013, dp_table_variables, by = "variable")

      ##johnson

      Johnson_dp02_13 <- inner_join(Johnson_dp02_2013, dp_table_variables, by = "variable")

      Johnson_dp03_13 <- inner_join(Johnson_dp03_2013, dp_table_variables, by = "variable")

      Johnson_dp04_13 <- inner_join(Johnson_dp04_2013, dp_table_variables, by = "variable")

      Johnson_dp05_13 <- inner_join(Johnson_dp05_2013, dp_table_variables, by = "variable")

      ##sullivan

      Sullivan_dp02_13 <- inner_join(Sullivan_dp02_2013, dp_table_variables, by = "variable")

      Sullivan_dp03_13 <- inner_join(Sullivan_dp03_2013, dp_table_variables, by = "variable")

      Sullivan_dp04_13 <- inner_join(Sullivan_dp04_2013, dp_table_variables, by = "variable")

      Sullivan_dp05_13 <- inner_join(Sullivan_dp05_2013, dp_table_variables, by = "variable")

      ##washington

      Washington_dp02_13 <- inner_join(Washington_dp02_2013, dp_table_variables, by = "variable")

      Washington_dp03_13 <- inner_join(Washington_dp03_2013, dp_table_variables, by = "variable")

      Washington_dp04_13 <- inner_join(Washington_dp04_2013, dp_table_variables, by = "variable")

      Washington_dp05_13 <- inner_join(Washington_dp05_2013, dp_table_variables, by = "variable")

      ##unicoi

      Unicoi_dp02_13 <- inner_join(Unicoi_dp02_2013, dp_table_variables, by = "variable")

      Unicoi_dp03_13 <- inner_join(Unicoi_dp03_2013, dp_table_variables, by = "variable")

      Unicoi_dp04_13 <- inner_join(Unicoi_dp04_2013, dp_table_variables, by = "variable")

      Unicoi_dp05_13 <- inner_join(Unicoi_dp05_2013, dp_table_variables, by = "variable")


  ####combine all the counties into their respective data tables####

  ####2017####

    dp02_17 <- rbind(Carter_dp02_17, Greene_dp02_17, Hancock_dp02_17, Hawkins_dp02_17, Johnson_dp02_17, Sullivan_dp02_17, Washington_dp02_17, Unicoi_dp02_17)
  
    dp03_17 <- rbind(Carter_dp03_17, Greene_dp03_17, Hancock_dp03_17, Hawkins_dp03_17, Johnson_dp03_17, Sullivan_dp03_17, Washington_dp03_17, Unicoi_dp03_17)

    dp04_17 <- rbind(Carter_dp04_17, Greene_dp04_17, Hancock_dp04_17, Hawkins_dp04_17, Johnson_dp04_17, Sullivan_dp04_17, Washington_dp04_17, Unicoi_dp04_17)

    dp05_17 <- rbind(Carter_dp05_17, Greene_dp05_17, Hancock_dp05_17, Hawkins_dp05_17, Johnson_dp05_17, Sullivan_dp05_17, Washington_dp05_17, Unicoi_dp05_17)

  ####2016####

    dp02_16 <- rbind(Carter_dp02_16, Greene_dp02_16, Hancock_dp02_16, Hawkins_dp02_16, Johnson_dp02_16, Sullivan_dp02_16, Washington_dp02_16, Unicoi_dp02_16)

    dp03_16 <- rbind(Carter_dp03_16, Greene_dp03_16, Hancock_dp03_16, Hawkins_dp03_16, Johnson_dp03_16, Sullivan_dp03_16, Washington_dp03_16, Unicoi_dp03_16)

    dp04_16 <- rbind(Carter_dp04_16, Greene_dp04_16, Hancock_dp04_16, Hawkins_dp04_16, Johnson_dp04_16, Sullivan_dp04_16, Washington_dp04_16, Unicoi_dp04_16)

    dp05_16 <- rbind(Carter_dp05_16, Greene_dp05_16, Hancock_dp05_16, Hawkins_dp05_16, Johnson_dp05_16, Sullivan_dp05_16, Washington_dp05_16, Unicoi_dp05_16)

  ####2015####

    dp02_15 <- rbind(Carter_dp02_15, Greene_dp02_15, Hancock_dp02_15, Hawkins_dp02_15, Johnson_dp02_15, Sullivan_dp02_15, Washington_dp02_15, Unicoi_dp02_15)

    dp03_15 <- rbind(Carter_dp03_15, Greene_dp03_15, Hancock_dp03_15, Hawkins_dp03_15, Johnson_dp03_15, Sullivan_dp03_15, Washington_dp03_15, Unicoi_dp03_15)

    dp04_15 <- rbind(Carter_dp04_15, Greene_dp04_15, Hancock_dp04_15, Hawkins_dp04_15, Johnson_dp04_15, Sullivan_dp04_15, Washington_dp04_15, Unicoi_dp04_15)

    dp05_15 <- rbind(Carter_dp05_15, Greene_dp05_15, Hancock_dp05_15, Hawkins_dp05_15, Johnson_dp05_15, Sullivan_dp05_15, Washington_dp05_15, Unicoi_dp05_15)

  ####2014####

    dp02_14 <- rbind(Carter_dp02_14, Greene_dp02_14, Hancock_dp02_14, Hawkins_dp02_14, Johnson_dp02_14, Sullivan_dp02_14, Washington_dp02_14, Unicoi_dp02_14)

    dp03_14 <- rbind(Carter_dp03_14, Greene_dp03_14, Hancock_dp03_14, Hawkins_dp03_14, Johnson_dp03_14, Sullivan_dp03_14, Washington_dp03_14, Unicoi_dp03_14)

    dp04_14 <- rbind(Carter_dp04_14, Greene_dp04_14, Hancock_dp04_14, Hawkins_dp04_14, Johnson_dp04_14, Sullivan_dp04_14, Washington_dp04_14, Unicoi_dp04_14)

    dp05_14 <- rbind(Carter_dp05_14, Greene_dp05_14, Hancock_dp05_14, Hawkins_dp05_14, Johnson_dp05_14, Sullivan_dp05_14, Washington_dp05_14, Unicoi_dp05_14)

  ####2013####

    dp02_13 <- rbind(Carter_dp02_13, Greene_dp02_13, Hancock_dp02_13, Hawkins_dp02_13, Johnson_dp02_13, Sullivan_dp02_13, Washington_dp02_13, Unicoi_dp02_13)

    dp03_13 <- rbind(Carter_dp03_13, Greene_dp03_13, Hancock_dp03_13, Hawkins_dp03_13, Johnson_dp03_13, Sullivan_dp03_13, Washington_dp03_13, Unicoi_dp03_13)

    dp04_13 <- rbind(Carter_dp04_13, Greene_dp04_13, Hancock_dp04_13, Hawkins_dp04_13, Johnson_dp04_13, Sullivan_dp04_13, Washington_dp04_13, Unicoi_dp04_13)

    dp05_13 <- rbind(Carter_dp05_13, Greene_dp05_13, Hancock_dp05_13, Hawkins_dp05_13, Johnson_dp05_13, Sullivan_dp05_13, Washington_dp05_13, Unicoi_dp05_13)

####have to fix the names eventually####

View(dp_table_variables)

####clean_variable_names <- c("TOTAL HOUSEHOLDS 2017", "PERCENT TOTAL HOUSEHOLDS 2017", "FAMILY HOUSEHOLDS 2017", "PERCENT FAMILY HOUSEHOLDS 2017", "HOUSEHOLDS WITH CHILDREN UNDER 18 2017", "PERCENT HOUSEHOLDS WITH CHILDREN UNDER 18 2017",
#                          "MARRIED COUPLE FAMILY HOUSEHOLDS 2017", "PERCENT MARRIED COUPLE FAMILY HOUSEHOLDS 2017", "MARRIED COUPLE FAMILY HOUSEHOLDS WITH CHILDREN UNDER 18 2017", "PERCENT MARRIED COUPLE FAMILY HOUSEHOLDS WITH CHILDREN UNDER 18 2017",
#                          "MALE HOUSEHOLDS WITH NO WIFE 2017", "PERCENT MALE HOUSEHOLDS WITH NO WIFE 2017", "MALE HOUSEHOLDS WITH NO WIFE AND KIDS UNDER 18 2017", "MALE HOUSEHOLDS WITH NO WIFE AND KIDS UNDER 18 2017",
#                          "FEMALE HOUSEHOLDS WITH NO HUSBAND 2017", "PERCENT FEMALE HOUSEHOLDS WITH NO HUSBAND 2017", "FEMALE HOUSEHOLDS WITH NO HUSBAND AND KIDS UNDER 18 2017", "PERCENT FEMALE HOUSEHOLDS WITH NO HUSBAND AND KINDS UNDER 18 2017",
#                          "NONFAMILY HOUSEHOLDS 2017", "PERCENT NONFAMILY HOUSEHOLDS 2017", "HOUSEHOLDER LIVING ALONE 2017", "PERCENT HOUSEHOLDER LIVING ALONE 2017", "HOUSEHOLDER LIVING ALONE OVER 65 2017", "PERCENT HOUSEHOLDER LIVING ALONE OVER 65 2017",
#                          "HOUSEHOLDS WITH AT LEAST ONE PERSON UNDER 18 2017", "PERCENT HOUSEHOLDS WITH AT LEAST ONE PERSON UNDER 18 2017", "HOUSEHOLDS WITH AT LEAST ONE PERSON OVER 65 2017", "PERCENT HOUSEHOLDS WITH AT LEAST ONE PERSON OVER 65 2017",
#                          "AVERAGE HOUSEHOLD SIZE 17", "PERCENT AVERAGE HOUSEHOLD SIZE 17", "AVERAGE FAMILY SIZE 2017", "PERCENT AVERAGE FAMILY SIZE 2017", "POPULATION IN HOUSEHOLDS 2017", "PERCENT POPULATION IN HOUSEHOLDS 2017",
#                          "HOUSEHOLDER 2017", "PERCENT HOUSEHOLDER 2017", "SPOUSE OF HOUSEHOLDER 2017", "PERCENT SPOUSE OF HOUSEHOLDER 2017", "CHILD OF HOUSEHOLDER 2017", "PERCENT CHILD OF HOUSEHOLDER 2017",
#                          "OTHER RELATIVES OF HOUSEHOLDER 2017", "PERCENT OTHER RELATIVES OF HOUSEHOLDER 2017", "NONRELATIVES OF HOUSEHOLDER 2017", "PERCENT NONRELATIVES OF HOUSEHOLDER 2017", "UNMARRIED PARTNER OF HOUSEHOLDER 2017, PERCENT UNMARRIED PARTNER OF HOUSEHOLDER 2017",
#                          "MARITAL STATUS MALES AGE 15 AND OVER 2017", "PERCENT MARITAL STATUS MALES AGE 15 AND OVER 2017", "MALES 15 AND OVER NEVER MARRIED 2017", "PERCENT MALES 15 AND OVER NEVER MARRIED 2017",
#                          "MALES 15 AND OVER NOW MARRIED EXCEPT SEPARATED 2017", "PERCENT MALES 15 AND OVER NOW MARRIED EXCEPT SEPARATED 2017", "MALES 15 AND OVER SEPARATED 2017", "PERCENT MALES 15 AND OVER SEPARATED 2017",
#                          "MALES 15 AND OVER WIDOWED 2017", "PERCENT MALES 15 AND OVER WIDOWED 2017", "MALES 15 AND OVER DIVORCED 2017", "PERCENT MALES 15 AND OVER DIVORCED 2017", "MARITAL STATUS FEMALES 15 AND OVER 2017", "PERCENT MARITAL STATUS FEMALES 15 AND OVER 2017",
#                          "FEMALES 15 AND OVER NEVER MARRIED 2017", "PERCENT FEMALES 15 AND OVER NEVER MARRIED 2017", "FEMALES 15 AND OVER NOW MARRIED EXCEPT SEPARATED 2017", "PERCENT FEMALES 15 AND OVER NOW MARRIED EXCEPT SEPARATED 2017",
#                          "FEMALES 15 AND OVER SEPARATED 2017, PERCENT FEMALES 15 AND OVER SEPARATED 2017", "FEMALES 15 AND OVER WIDOWED 2017", "PERCENT FEMALES 15 AND OVER WIDOWED 2017", "FEMALES 15 AND OVER DIVORCED 2017", "PERCENT FEMALES 15 AND OVER DIVORCED 2017",
#                          "WOMEN 15 TO 50 WHO HAD A BIRTH IN PAST 12 MONTHS 2017", "PERCENT WOMEN 15 TO 50 WHO HAD A BIRTH IN PAST 12 MONTHS 2017", "UNMARRIED WOMEN 15-50 WHO HAD A BIRTH IN PAST 12 MONTHS 2017", "PERCENT UNMARRIED WOMEN 15-50 WHO HAD A BIRTH IN THE PAST 12 MONTHS 2017",
#                          "UNMARRIED WOMEN 15 TO 50 WHO HAD A BIRTH IN PAST 12 MONTHS PER 1000 UNMARRIED WOMEN 2017", "PERCENT UNMARRIED WOMEN 15 TO 50 WHO HAD A BIRTH IN PAST 12 MONTHS PER 1000 UNMARRIED WOMEN 2017", "WOMEN 15 TO 50 WHO HAD A BIRTH IN PAST 12 MONTHS PER 1000 WOMEN AGED 15 TO 50 2017", "PERCENT WOMEN 15 TO 50 WHO HAD A BIRTH IN PAST 12 MONTHS PER 1000 WOMEN AGED 15 TO 50 2017",
#                          "WOMEN 15-19 WHO HAD A BIRTH IN PAST 12 MONTHS 2017", "PERCENT WOMEN 15-19 WHO HAD A BIRTH IN PAST 12 MONTHS 2017", "WOMEN 20-34 WHO HAD A BIRTH IN PAST 12 MONTHS 2017", "PERCENT WOMEN 20-34 WHO HAD A BIRTH IN PAST 12 MONTHS 2017",
#                          "WOMEN 35-50 WHO HAD A BIRTH IN PAST 12 MONTHS 2017", "PERCENT WOMEN 35-50 WHO HAD A BIRTH IN PAST 12 MONTHS 2017", "GRANDPARENTS LIVING WITH OWN GRANDCHILDER UNDER 18 2017", "PERCENT GRANDPARENTS LIVING WITH OWN CHADCHILDERN UNDER 18 2017",
#                          "GRANDPARENTS REPSONSIBLE FOR GRANDCHILDREN UNDER 18 2017", "PERCENT GRANDPARENTS RESPONSIBLE FOR GRANDCHILDER UNDER 18 2017", "GRANDPARENTS RESPONSIBLE FOR CHILDREN UNDER 1 2017", "PERCENT GRANDPARENTS RESPONSIBLE FOR CHILDER UNDER 1 2017", "")


####combine into data profiles by year####

  #2017#
  
    dp_2017 <- rbind(dp02_17, dp03_17, dp04_17, dp05_17)

    year <- rep(2017, length(dp_2017$NAME))

    dp_2017 <- cbind(year, dp_2017)

  #2016  
  
    dp_2016 <- rbind(dp02_16, dp03_16, dp04_16, dp05_16)

    year <- rep(2016, length(dp_2016$NAME))

    dp_2016 <- cbind(year, dp_2016)

  #2015
  
    dp_2015 <- rbind(dp02_15, dp03_15, dp04_15, dp05_15)
  
    year <- rep(2015, length(dp_2015$NAME))
  
    dp_2015 <- cbind(year, dp_2015)
  
  #2014
  
    dp_2014 <- rbind(dp02_14, dp03_14, dp04_14, dp05_14)
  
    year <- rep(2014, length(dp_2014$NAME))
  
    dp_2014 <- cbind(year, dp_2014)
  
  #2013
  
    dp_2013 <- rbind(dp02_13, dp03_13, dp04_13, dp05_13)
  
    year <- rep(2013, length(dp_2013$NAME))
  
    dp_2013 <- cbind(year, dp_2013)
    
####finally, lets combine it all into one giant mess of a dataframe####
    
    data_profile <- rbind(dp_2017, dp_2016, dp_2015, dp_2014, dp_2013)

    dim(data_profile)

####need to get county level data for comparisons within the stupid county####
    ### should get overall county totals for comparison within that county 
    
   #Carter
    
    #2017
    
    Carter_County_dp02_2017 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP02", year = 2017, geometry = TRUE)
     
    Carter_County_dp03_2017 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP03", year = 2017, geometry = TRUE)
    
    Carter_County_dp04_2017 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP04", year = 2017, geometry = TRUE)
    
    Carter_County_dp05_2017 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP05", year = 2017, geometry = TRUE)
    
    #2016
    
    Carter_County_dp02_2016 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP02", year = 2016, geometry = TRUE)
    
    Carter_County_dp03_2016 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP03", year = 2016, geometry = TRUE)
    
    Carter_County_dp04_2016 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP04", year = 2016, geometry = TRUE)
    
    Carter_County_dp05_2016 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP05", year = 2016, geometry = TRUE)
    
    #2015
    
    Carter_County_dp02_2015 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP02", year = 2015, geometry = TRUE)
    
    Carter_County_dp03_2015 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP03", year = 2015, geometry = TRUE)
    
    Carter_County_dp04_2015 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP04", year = 2015, geometry = TRUE)
    
    Carter_County_dp05_2015 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP05", year = 2015, geometry = TRUE)
    
    #2014
    
    Carter_County_dp02_2014 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP02", year = 2014, geometry = TRUE)
    
    Carter_County_dp03_2014 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP03", year = 2014, geometry = TRUE)
    
    Carter_County_dp04_2014 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP04", year = 2014, geometry = TRUE)
    
    Carter_County_dp05_2014 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP05", year = 2014, geometry = TRUE)
    
    #2013
    
    Carter_County_dp02_2013 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP02", year = 2013, geometry = TRUE)
    
    Carter_County_dp03_2013 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP03", year = 2013, geometry = TRUE)
    
    Carter_County_dp04_2013 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP04", year = 2013, geometry = TRUE)
    
    Carter_County_dp05_2013 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP05", year = 2013, geometry = TRUE)
    
    #Greene
    
    #2017
    
    Greene_County_dp02_2017 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP02", year = 2017, geometry = TRUE)
    
    Greene_County_dp03_2017 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP03", year = 2017, geometry = TRUE)
    
    Greene_County_dp04_2017 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP04", year = 2017, geometry = TRUE)
    
    Greene_County_dp05_2017 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP05", year = 2017, geometry = TRUE)
    
    #2016
    
    Greene_County_dp02_2016 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP02", year = 2016, geometry = TRUE)
    
    Greene_County_dp03_2016 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP03", year = 2016, geometry = TRUE)
    
    Greene_County_dp04_2016 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP04", year = 2016, geometry = TRUE)
    
    Greene_County_dp05_2016 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP05", year = 2016, geometry = TRUE)
    
    #2015
    
    Greene_County_dp02_2015 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP02", year = 2015, geometry = TRUE)
    
    Greene_County_dp03_2015 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP03", year = 2015, geometry = TRUE)
    
    Greene_County_dp04_2015 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP04", year = 2015, geometry = TRUE)
    
    Greene_County_dp05_2015 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP05", year = 2015, geometry = TRUE)
    
    #2014
    
    Greene_County_dp02_2014 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP02", year = 2014, geometry = TRUE)
    
    Greene_County_dp03_2014 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP03", year = 2014, geometry = TRUE)
    
    Greene_County_dp04_2014 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP04", year = 2014, geometry = TRUE)
    
    Greene_County_dp05_2014 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP05", year = 2014, geometry = TRUE)
    
    #2013
    
    Greene_County_dp02_2013 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP02", year = 2013, geometry = TRUE)
    
    Greene_County_dp03_2013 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP03", year = 2013, geometry = TRUE)
    
    Greene_County_dp04_2013 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP04", year = 2013, geometry = TRUE)
    
    Greene_County_dp05_2013 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP05", year = 2013, geometry = TRUE)      
    
    #Hancock
    
    #2017
    
    Hancock_County_dp02_2017 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP02", year = 2017, geometry = TRUE)
    
    Hancock_County_dp03_2017 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP03", year = 2017, geometry = TRUE)
    
    Hancock_County_dp04_2017 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP04", year = 2017, geometry = TRUE)
    
    Hancock_County_dp05_2017 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP05", year = 2017, geometry = TRUE)
    
    #2016
    
    Hancock_County_dp02_2016 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP02", year = 2016, geometry = TRUE)
    
    Hancock_County_dp03_2016 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP03", year = 2016, geometry = TRUE)
    
    Hancock_County_dp04_2016 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP04", year = 2016, geometry = TRUE)
    
    Hancock_County_dp05_2016 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP05", year = 2016, geometry = TRUE)
    
    #2015
    
    Hancock_County_dp02_2015 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP02", year = 2015, geometry = TRUE)
    
    Hancock_County_dp03_2015 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP03", year = 2015, geometry = TRUE)
    
    Hancock_County_dp04_2015 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP04", year = 2015, geometry = TRUE)
    
    Hancock_County_dp05_2015 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP05", year = 2015, geometry = TRUE)
    
    #2014
    
    Hancock_County_dp02_2014 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP02", year = 2014, geometry = TRUE)
    
    Hancock_County_dp03_2014 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP03", year = 2014, geometry = TRUE)
    
    Hancock_County_dp04_2014 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP04", year = 2014, geometry = TRUE)
    
    Hancock_County_dp05_2014 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP05", year = 2014, geometry = TRUE)
    
    #2013
    
    Hancock_County_dp02_2013 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP02", year = 2013, geometry = TRUE)
    
    Hancock_County_dp03_2013 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP03", year = 2013, geometry = TRUE)
    
    Hancock_County_dp04_2013 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP04", year = 2013, geometry = TRUE)
    
    Hancock_County_dp05_2013 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP05", year = 2013, geometry = TRUE)    
    
    #Hawkins
    
    #2017
    
    Hawkins_County_dp02_2017 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP02", year = 2017, geometry = TRUE)
    
    Hawkins_County_dp03_2017 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP03", year = 2017, geometry = TRUE)
    
    Hawkins_County_dp04_2017 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP04", year = 2017, geometry = TRUE)
    
    Hawkins_County_dp05_2017 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP05", year = 2017, geometry = TRUE)
    
    #2016
    
    Hawkins_County_dp02_2016 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP02", year = 2016, geometry = TRUE)
    
    Hawkins_County_dp03_2016 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP03", year = 2016, geometry = TRUE)
    
    Hawkins_County_dp04_2016 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP04", year = 2016, geometry = TRUE)
    
    Hawkins_County_dp05_2016 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP05", year = 2016, geometry = TRUE)
    
    #2015
    
    Hawkins_County_dp02_2015 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP02", year = 2015, geometry = TRUE)
    
    Hawkins_County_dp03_2015 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP03", year = 2015, geometry = TRUE)
    
    Hawkins_County_dp04_2015 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP04", year = 2015, geometry = TRUE)
    
    Hawkins_County_dp05_2015 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP05", year = 2015, geometry = TRUE)
    
    #2014
    
    Hawkins_County_dp02_2014 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP02", year = 2014, geometry = TRUE)
    
    Hawkins_County_dp03_2014 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP03", year = 2014, geometry = TRUE)
    
    Hawkins_County_dp04_2014 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP04", year = 2014, geometry = TRUE)
    
    Hawkins_County_dp05_2014 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP05", year = 2014, geometry = TRUE)
    
    #2013
    
    Hawkins_County_dp02_2013 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP02", year = 2013, geometry = TRUE)
    
    Hawkins_County_dp03_2013 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP03", year = 2013, geometry = TRUE)
    
    Hawkins_County_dp04_2013 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP04", year = 2013, geometry = TRUE)
    
    Hawkins_County_dp05_2013 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP05", year = 2013, geometry = TRUE)
    
    #Johnson
    
    #2017
    
    Johnson_County_dp02_2017 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP02", year = 2017, geometry = TRUE)
    
    Johnson_County_dp03_2017 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP03", year = 2017, geometry = TRUE)
    
    Johnson_County_dp04_2017 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP04", year = 2017, geometry = TRUE)
    
    Johnson_County_dp05_2017 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP05", year = 2017, geometry = TRUE)
    
    #2016
    
    Johnson_County_dp02_2016 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP02", year = 2016, geometry = TRUE)
    
    Johnson_County_dp03_2016 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP03", year = 2016, geometry = TRUE)
    
    Johnson_County_dp04_2016 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP04", year = 2016, geometry = TRUE)
    
    Johnson_County_dp05_2016 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP05", year = 2016, geometry = TRUE)
    
    #2015
    
    Johnson_County_dp02_2015 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP02", year = 2015, geometry = TRUE)
    
    Johnson_County_dp03_2015 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP03", year = 2015, geometry = TRUE)
    
    Johnson_County_dp04_2015 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP04", year = 2015, geometry = TRUE)
    
    Johnson_County_dp05_2015 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP05", year = 2015, geometry = TRUE)
    
    #2014
    
    Johnson_County_dp02_2014 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP02", year = 2014, geometry = TRUE)
    
    Johnson_County_dp03_2014 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP03", year = 2014, geometry = TRUE)
    
    Johnson_County_dp04_2014 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP04", year = 2014, geometry = TRUE)
    
    Johnson_County_dp05_2014 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP05", year = 2014, geometry = TRUE)
    
    #2013
    
    Johnson_County_dp02_2013 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP02", year = 2013, geometry = TRUE)
    
    Johnson_County_dp03_2013 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP03", year = 2013, geometry = TRUE)
    
    Johnson_County_dp04_2013 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP04", year = 2013, geometry = TRUE)
    
    Johnson_County_dp05_2013 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP05", year = 2013, geometry = TRUE)  
    
    #Sullivan
    
    #2017
    
    Sullivan_County_dp02_2017 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP02", year = 2017, geometry = TRUE)
    
    Sullivan_County_dp03_2017 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP03", year = 2017, geometry = TRUE)
    
    Sullivan_County_dp04_2017 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP04", year = 2017, geometry = TRUE)
    
    Sullivan_County_dp05_2017 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP05", year = 2017, geometry = TRUE)
    
    #2016
    
    Sullivan_County_dp02_2016 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP02", year = 2016, geometry = TRUE)
    
    Sullivan_County_dp03_2016 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP03", year = 2016, geometry = TRUE)
    
    Sullivan_County_dp04_2016 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP04", year = 2016, geometry = TRUE)
    
    Sullivan_County_dp05_2016 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP05", year = 2016, geometry = TRUE)
    
    #2015
    
    Sullivan_County_dp02_2015 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP02", year = 2015, geometry = TRUE)
    
    Sullivan_County_dp03_2015 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP03", year = 2015, geometry = TRUE)
    
    Sullivan_County_dp04_2015 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP04", year = 2015, geometry = TRUE)
    
    Sullivan_County_dp05_2015 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP05", year = 2015, geometry = TRUE)
    
    #2014
    
    Sullivan_County_dp02_2014 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP02", year = 2014, geometry = TRUE)
    
    Sullivan_County_dp03_2014 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP03", year = 2014, geometry = TRUE)
    
    Sullivan_County_dp04_2014 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP04", year = 2014, geometry = TRUE)
    
    Sullivan_County_dp05_2014 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP05", year = 2014, geometry = TRUE)
    
    #2013
    
    Sullivan_County_dp02_2013 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP02", year = 2013, geometry = TRUE)
    
    Sullivan_County_dp03_2013 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP03", year = 2013, geometry = TRUE)
    
    Sullivan_County_dp04_2013 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP04", year = 2013, geometry = TRUE)
    
    Sullivan_County_dp05_2013 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP05", year = 2013, geometry = TRUE)  
    
    #Washington
    
    #2017
    
    Washington_County_dp02_2017 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP02", year = 2017, geometry = TRUE)
    
    Washington_County_dp03_2017 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP03", year = 2017, geometry = TRUE)
    
    Washington_County_dp04_2017 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP04", year = 2017, geometry = TRUE)
    
    Washington_County_dp05_2017 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP05", year = 2017, geometry = TRUE)
    
    #2016
    
    Washington_County_dp02_2016 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP02", year = 2016, geometry = TRUE)
    
    Washington_County_dp03_2016 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP03", year = 2016, geometry = TRUE)
    
    Washington_County_dp04_2016 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP04", year = 2016, geometry = TRUE)
    
    Washington_County_dp05_2016 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP05", year = 2016, geometry = TRUE)
    
    #2015
    
    Washington_County_dp02_2015 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP02", year = 2015, geometry = TRUE)
    
    Washington_County_dp03_2015 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP03", year = 2015, geometry = TRUE)
    
    Washington_County_dp04_2015 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP04", year = 2015, geometry = TRUE)
    
    Washington_County_dp05_2015 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP05", year = 2015, geometry = TRUE)
    
    #2014
    
    Washington_County_dp02_2014 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP02", year = 2014, geometry = TRUE)
    
    Washington_County_dp03_2014 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP03", year = 2014, geometry = TRUE)
    
    Washington_County_dp04_2014 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP04", year = 2014, geometry = TRUE)
    
    Washington_County_dp05_2014 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP05", year = 2014, geometry = TRUE)
    
    #2013
    
    Washington_County_dp02_2013 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP02", year = 2013, geometry = TRUE)
    
    Washington_County_dp03_2013 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP03", year = 2013, geometry = TRUE)
    
    Washington_County_dp04_2013 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP04", year = 2013, geometry = TRUE)
    
    Washington_County_dp05_2013 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP05", year = 2013, geometry = TRUE)
    
    #Unicoi
    
    #2017
    
    Unicoi_County_dp02_2017 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP02", year = 2017, geometry = TRUE)
    
    Unicoi_County_dp03_2017 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP03", year = 2017, geometry = TRUE)
    
    Unicoi_County_dp04_2017 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP04", year = 2017, geometry = TRUE)
    
    Unicoi_County_dp05_2017 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP05", year = 2017, geometry = TRUE)
    
    #2016
    
    Unicoi_County_dp02_2016 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP02", year = 2016, geometry = TRUE)
    
    Unicoi_County_dp03_2016 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP03", year = 2016, geometry = TRUE)
    
    Unicoi_County_dp04_2016 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP04", year = 2016, geometry = TRUE)
    
    Unicoi_County_dp05_2016 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP05", year = 2016, geometry = TRUE)
    
    #2015
    
    Unicoi_County_dp02_2015 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP02", year = 2015, geometry = TRUE)
    
    Unicoi_County_dp03_2015 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP03", year = 2015, geometry = TRUE)
    
    Unicoi_County_dp04_2015 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP04", year = 2015, geometry = TRUE)
    
    Unicoi_County_dp05_2015 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP05", year = 2015, geometry = TRUE)
    
    #2014
    
    Unicoi_County_dp02_2014 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP02", year = 2014, geometry = TRUE)
    
    Unicoi_County_dp03_2014 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP03", year = 2014, geometry = TRUE)
    
    Unicoi_County_dp04_2014 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP04", year = 2014, geometry = TRUE)
    
    Unicoi_County_dp05_2014 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP05", year = 2014, geometry = TRUE)
    
    #2013
    
    Unicoi_County_dp02_2013 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP02", year = 2013, geometry = TRUE)
    
    Unicoi_County_dp03_2013 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP03", year = 2013, geometry = TRUE)
    
    Unicoi_County_dp04_2013 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP04", year = 2013, geometry = TRUE)
    
    Unicoi_County_dp05_2013 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP05", year = 2013, geometry = TRUE) 
    
    ###join the variable names together###
    
    ####2017####
    
    ##carter
    
    Carter_County_dp02_17 <- inner_join(Carter_County_dp02_2017, dp_table_variables, by = "variable")
    
    Carter_County_dp03_17 <- inner_join(Carter_County_dp03_2017, dp_table_variables, by = "variable")
    
    Carter_County_dp04_17 <- inner_join(Carter_County_dp04_2017, dp_table_variables, by = "variable")
    
    Carter_County_dp05_17 <- inner_join(Carter_County_dp05_2017, dp_table_variables, by = "variable")
    
    ####2016####
    
    ##carter
    
    Carter_County_dp02_16 <- inner_join(Carter_County_dp02_2016, dp_table_variables, by = "variable")
    
    Carter_County_dp03_16 <- inner_join(Carter_County_dp03_2016, dp_table_variables, by = "variable")
    
    Carter_County_dp04_16 <- inner_join(Carter_County_dp04_2016, dp_table_variables, by = "variable")
    
    Carter_County_dp05_16 <- inner_join(Carter_County_dp05_2016, dp_table_variables, by = "variable")
    
    ####2015####
    
    ##carter
    
    Carter_County_dp02_15 <- inner_join(Carter_County_dp02_2015, dp_table_variables, by = "variable")
    
    Carter_County_dp03_15 <- inner_join(Carter_County_dp03_2015, dp_table_variables, by = "variable")
    
    Carter_County_dp04_15 <- inner_join(Carter_County_dp04_2015, dp_table_variables, by = "variable")
    
    Carter_County_dp05_15 <- inner_join(Carter_County_dp05_2015, dp_table_variables, by = "variable")
    
    ####2014####
    
    ##carter
    
    Carter_County_dp02_14 <- inner_join(Carter_County_dp02_2014, dp_table_variables, by = "variable")
    
    Carter_County_dp03_14 <- inner_join(Carter_County_dp03_2014, dp_table_variables, by = "variable")
    
    Carter_County_dp04_14 <- inner_join(Carter_County_dp04_2014, dp_table_variables, by = "variable")
    
    Carter_County_dp05_14 <- inner_join(Carter_County_dp05_2014, dp_table_variables, by = "variable")
    
    ####2013####
    
    ##carter
    
    Carter_County_dp02_13 <- inner_join(Carter_County_dp02_2013, dp_table_variables, by = "variable")
    
    Carter_County_dp03_13 <- inner_join(Carter_County_dp03_2013, dp_table_variables, by = "variable")
    
    Carter_County_dp04_13 <- inner_join(Carter_County_dp04_2013, dp_table_variables, by = "variable")
    
    Carter_County_dp05_13 <- inner_join(Carter_County_dp05_2013, dp_table_variables, by = "variable")
    
    
    
    ####2017####
    
    ##Greene
    
    Greene_County_dp02_17 <- inner_join(Greene_County_dp02_2017, dp_table_variables, by = "variable")
    
    Greene_County_dp03_17 <- inner_join(Greene_County_dp03_2017, dp_table_variables, by = "variable")
    
    Greene_County_dp04_17 <- inner_join(Greene_County_dp04_2017, dp_table_variables, by = "variable")
    
    Greene_County_dp05_17 <- inner_join(Greene_County_dp05_2017, dp_table_variables, by = "variable")
    
    ####2016####
    
    ##Greene
    
    Greene_County_dp02_16 <- inner_join(Greene_County_dp02_2016, dp_table_variables, by = "variable")
    
    Greene_County_dp03_16 <- inner_join(Greene_County_dp03_2016, dp_table_variables, by = "variable")
    
    Greene_County_dp04_16 <- inner_join(Greene_County_dp04_2016, dp_table_variables, by = "variable")
    
    Greene_County_dp05_16 <- inner_join(Greene_County_dp05_2016, dp_table_variables, by = "variable")
    
    ####2015####
    
    ##Greene
    
    Greene_County_dp02_15 <- inner_join(Greene_County_dp02_2015, dp_table_variables, by = "variable")
    
    Greene_County_dp03_15 <- inner_join(Greene_County_dp03_2015, dp_table_variables, by = "variable")
    
    Greene_County_dp04_15 <- inner_join(Greene_County_dp04_2015, dp_table_variables, by = "variable")
    
    Greene_County_dp05_15 <- inner_join(Greene_County_dp05_2015, dp_table_variables, by = "variable")
    
    ####2014####
    
    ##Greene
    
    Greene_County_dp02_14 <- inner_join(Greene_County_dp02_2014, dp_table_variables, by = "variable")
    
    Greene_County_dp03_14 <- inner_join(Greene_County_dp03_2014, dp_table_variables, by = "variable")
    
    Greene_County_dp04_14 <- inner_join(Greene_County_dp04_2014, dp_table_variables, by = "variable")
    
    Greene_County_dp05_14 <- inner_join(Greene_County_dp05_2014, dp_table_variables, by = "variable")
    
    ####2013####
    
    ##Greene
    
    Greene_County_dp02_13 <- inner_join(Greene_County_dp02_2013, dp_table_variables, by = "variable")
    
    Greene_County_dp03_13 <- inner_join(Greene_County_dp03_2013, dp_table_variables, by = "variable")
    
    Greene_County_dp04_13 <- inner_join(Greene_County_dp04_2013, dp_table_variables, by = "variable")
    
    Greene_County_dp05_13 <- inner_join(Greene_County_dp05_2013, dp_table_variables, by = "variable")
    
    ####2017####
    
    ##Hancock
    
    Hancock_County_dp02_17 <- inner_join(Hancock_County_dp02_2017, dp_table_variables, by = "variable")
    
    Hancock_County_dp03_17 <- inner_join(Hancock_County_dp03_2017, dp_table_variables, by = "variable")
    
    Hancock_County_dp04_17 <- inner_join(Hancock_County_dp04_2017, dp_table_variables, by = "variable")
    
    Hancock_County_dp05_17 <- inner_join(Hancock_County_dp05_2017, dp_table_variables, by = "variable")
    
    ####2016####
    
    ##Hancock
    
    Hancock_County_dp02_16 <- inner_join(Hancock_County_dp02_2016, dp_table_variables, by = "variable")
    
    Hancock_County_dp03_16 <- inner_join(Hancock_County_dp03_2016, dp_table_variables, by = "variable")
    
    Hancock_County_dp04_16 <- inner_join(Hancock_County_dp04_2016, dp_table_variables, by = "variable")
    
    Hancock_County_dp05_16 <- inner_join(Hancock_County_dp05_2016, dp_table_variables, by = "variable")
    
    ####2015####
    
    ##Hancock
    
    Hancock_County_dp02_15 <- inner_join(Hancock_County_dp02_2015, dp_table_variables, by = "variable")
    
    Hancock_County_dp03_15 <- inner_join(Hancock_County_dp03_2015, dp_table_variables, by = "variable")
    
    Hancock_County_dp04_15 <- inner_join(Hancock_County_dp04_2015, dp_table_variables, by = "variable")
    
    Hancock_County_dp05_15 <- inner_join(Hancock_County_dp05_2015, dp_table_variables, by = "variable")
    
    ####2014####
    
    ##Hancock
    
    Hancock_County_dp02_14 <- inner_join(Hancock_County_dp02_2014, dp_table_variables, by = "variable")
    
    Hancock_County_dp03_14 <- inner_join(Hancock_County_dp03_2014, dp_table_variables, by = "variable")
    
    Hancock_County_dp04_14 <- inner_join(Hancock_County_dp04_2014, dp_table_variables, by = "variable")
    
    Hancock_County_dp05_14 <- inner_join(Hancock_County_dp05_2014, dp_table_variables, by = "variable")
    
    ####2013####
    
    ##Hancock
    
    Hancock_County_dp02_13 <- inner_join(Hancock_County_dp02_2013, dp_table_variables, by = "variable")
    
    Hancock_County_dp03_13 <- inner_join(Hancock_County_dp03_2013, dp_table_variables, by = "variable")
    
    Hancock_County_dp04_13 <- inner_join(Hancock_County_dp04_2013, dp_table_variables, by = "variable")
    
    Hancock_County_dp05_13 <- inner_join(Hancock_County_dp05_2013, dp_table_variables, by = "variable")
    
    
    ####2017####
    
    ##Hawkins
    
    Hawkins_County_dp02_17 <- inner_join(Hawkins_County_dp02_2017, dp_table_variables, by = "variable")
    
    Hawkins_County_dp03_17 <- inner_join(Hawkins_County_dp03_2017, dp_table_variables, by = "variable")
    
    Hawkins_County_dp04_17 <- inner_join(Hawkins_County_dp04_2017, dp_table_variables, by = "variable")
    
    Hawkins_County_dp05_17 <- inner_join(Hawkins_County_dp05_2017, dp_table_variables, by = "variable")
    
    ####2016####
    
    ##Hawkins
    
    Hawkins_County_dp02_16 <- inner_join(Hawkins_County_dp02_2016, dp_table_variables, by = "variable")
    
    Hawkins_County_dp03_16 <- inner_join(Hawkins_County_dp03_2016, dp_table_variables, by = "variable")
    
    Hawkins_County_dp04_16 <- inner_join(Hawkins_County_dp04_2016, dp_table_variables, by = "variable")
    
    Hawkins_County_dp05_16 <- inner_join(Hawkins_County_dp05_2016, dp_table_variables, by = "variable")
    
    ####2015####
    
    ##Hawkins
    
    Hawkins_County_dp02_15 <- inner_join(Hawkins_County_dp02_2015, dp_table_variables, by = "variable")
    
    Hawkins_County_dp03_15 <- inner_join(Hawkins_County_dp03_2015, dp_table_variables, by = "variable")
    
    Hawkins_County_dp04_15 <- inner_join(Hawkins_County_dp04_2015, dp_table_variables, by = "variable")
    
    Hawkins_County_dp05_15 <- inner_join(Hawkins_County_dp05_2015, dp_table_variables, by = "variable")
    
    ####2014####
    
    ##Hawkins
    
    Hawkins_County_dp02_14 <- inner_join(Hawkins_County_dp02_2014, dp_table_variables, by = "variable")
    
    Hawkins_County_dp03_14 <- inner_join(Hawkins_County_dp03_2014, dp_table_variables, by = "variable")
    
    Hawkins_County_dp04_14 <- inner_join(Hawkins_County_dp04_2014, dp_table_variables, by = "variable")
    
    Hawkins_County_dp05_14 <- inner_join(Hawkins_County_dp05_2014, dp_table_variables, by = "variable")
    
    ####2013####
    
    ##Hawkins
    
    Hawkins_County_dp02_13 <- inner_join(Hawkins_County_dp02_2013, dp_table_variables, by = "variable")
    
    Hawkins_County_dp03_13 <- inner_join(Hawkins_County_dp03_2013, dp_table_variables, by = "variable")
    
    Hawkins_County_dp04_13 <- inner_join(Hawkins_County_dp04_2013, dp_table_variables, by = "variable")
    
    Hawkins_County_dp05_13 <- inner_join(Hawkins_County_dp05_2013, dp_table_variables, by = "variable")
    
    ####2017####
    
    ##Johnson
    
    Johnson_County_dp02_17 <- inner_join(Johnson_County_dp02_2017, dp_table_variables, by = "variable")
    
    Johnson_County_dp03_17 <- inner_join(Johnson_County_dp03_2017, dp_table_variables, by = "variable")
    
    Johnson_County_dp04_17 <- inner_join(Johnson_County_dp04_2017, dp_table_variables, by = "variable")
    
    Johnson_County_dp05_17 <- inner_join(Johnson_County_dp05_2017, dp_table_variables, by = "variable")
    
    ####2016####
    
    ##Johnson
    
    Johnson_County_dp02_16 <- inner_join(Johnson_County_dp02_2016, dp_table_variables, by = "variable")
    
    Johnson_County_dp03_16 <- inner_join(Johnson_County_dp03_2016, dp_table_variables, by = "variable")
    
    Johnson_County_dp04_16 <- inner_join(Johnson_County_dp04_2016, dp_table_variables, by = "variable")
    
    Johnson_County_dp05_16 <- inner_join(Johnson_County_dp05_2016, dp_table_variables, by = "variable")
    
    ####2015####
    
    ##Johnson
    
    Johnson_County_dp02_15 <- inner_join(Johnson_County_dp02_2015, dp_table_variables, by = "variable")
    
    Johnson_County_dp03_15 <- inner_join(Johnson_County_dp03_2015, dp_table_variables, by = "variable")
    
    Johnson_County_dp04_15 <- inner_join(Johnson_County_dp04_2015, dp_table_variables, by = "variable")
    
    Johnson_County_dp05_15 <- inner_join(Johnson_County_dp05_2015, dp_table_variables, by = "variable")
    
    ####2014####
    
    ##Johnson
    
    Johnson_County_dp02_14 <- inner_join(Johnson_County_dp02_2014, dp_table_variables, by = "variable")
    
    Johnson_County_dp03_14 <- inner_join(Johnson_County_dp03_2014, dp_table_variables, by = "variable")
    
    Johnson_County_dp04_14 <- inner_join(Johnson_County_dp04_2014, dp_table_variables, by = "variable")
    
    Johnson_County_dp05_14 <- inner_join(Johnson_County_dp05_2014, dp_table_variables, by = "variable")
    
    ####2013####
    
    ##Johnson
    
    Johnson_County_dp02_13 <- inner_join(Johnson_County_dp02_2013, dp_table_variables, by = "variable")
    
    Johnson_County_dp03_13 <- inner_join(Johnson_County_dp03_2013, dp_table_variables, by = "variable")
    
    Johnson_County_dp04_13 <- inner_join(Johnson_County_dp04_2013, dp_table_variables, by = "variable")
    
    Johnson_County_dp05_13 <- inner_join(Johnson_County_dp05_2013, dp_table_variables, by = "variable")
    
    ####2017####
    
    ##Sullivan
    
    Sullivan_County_dp02_17 <- inner_join(Sullivan_County_dp02_2017, dp_table_variables, by = "variable")
    
    Sullivan_County_dp03_17 <- inner_join(Sullivan_County_dp03_2017, dp_table_variables, by = "variable")
    
    Sullivan_County_dp04_17 <- inner_join(Sullivan_County_dp04_2017, dp_table_variables, by = "variable")
    
    Sullivan_County_dp05_17 <- inner_join(Sullivan_County_dp05_2017, dp_table_variables, by = "variable")
    
    ####2016####
    
    ##Sullivan
    
    Sullivan_County_dp02_16 <- inner_join(Sullivan_County_dp02_2016, dp_table_variables, by = "variable")
    
    Sullivan_County_dp03_16 <- inner_join(Sullivan_County_dp03_2016, dp_table_variables, by = "variable")
    
    Sullivan_County_dp04_16 <- inner_join(Sullivan_County_dp04_2016, dp_table_variables, by = "variable")
    
    Sullivan_County_dp05_16 <- inner_join(Sullivan_County_dp05_2016, dp_table_variables, by = "variable")
    
    ####2015####
    
    ##Sullivan
    
    Sullivan_County_dp02_15 <- inner_join(Sullivan_County_dp02_2015, dp_table_variables, by = "variable")
    
    Sullivan_County_dp03_15 <- inner_join(Sullivan_County_dp03_2015, dp_table_variables, by = "variable")
    
    Sullivan_County_dp04_15 <- inner_join(Sullivan_County_dp04_2015, dp_table_variables, by = "variable")
    
    Sullivan_County_dp05_15 <- inner_join(Sullivan_County_dp05_2015, dp_table_variables, by = "variable")
    
    ####2014####
    
    ##Sullivan
    
    Sullivan_County_dp02_14 <- inner_join(Sullivan_County_dp02_2014, dp_table_variables, by = "variable")
    
    Sullivan_County_dp03_14 <- inner_join(Sullivan_County_dp03_2014, dp_table_variables, by = "variable")
    
    Sullivan_County_dp04_14 <- inner_join(Sullivan_County_dp04_2014, dp_table_variables, by = "variable")
    
    Sullivan_County_dp05_14 <- inner_join(Sullivan_County_dp05_2014, dp_table_variables, by = "variable")
    
    ####2013####
    
    ##Sullivan
    
    Sullivan_County_dp02_13 <- inner_join(Sullivan_County_dp02_2013, dp_table_variables, by = "variable")
    
    Sullivan_County_dp03_13 <- inner_join(Sullivan_County_dp03_2013, dp_table_variables, by = "variable")
    
    Sullivan_County_dp04_13 <- inner_join(Sullivan_County_dp04_2013, dp_table_variables, by = "variable")
    
    Sullivan_County_dp05_13 <- inner_join(Sullivan_County_dp05_2013, dp_table_variables, by = "variable")
    
    ####2017####
    
    ##Washington
    
    Washington_County_dp02_17 <- inner_join(Washington_County_dp02_2017, dp_table_variables, by = "variable")
    
    Washington_County_dp03_17 <- inner_join(Washington_County_dp03_2017, dp_table_variables, by = "variable")
    
    Washington_County_dp04_17 <- inner_join(Washington_County_dp04_2017, dp_table_variables, by = "variable")
    
    Washington_County_dp05_17 <- inner_join(Washington_County_dp05_2017, dp_table_variables, by = "variable")
    
    ####2016####
    
    ##Washington
    
    Washington_County_dp02_16 <- inner_join(Washington_County_dp02_2016, dp_table_variables, by = "variable")
    
    Washington_County_dp03_16 <- inner_join(Washington_County_dp03_2016, dp_table_variables, by = "variable")
    
    Washington_County_dp04_16 <- inner_join(Washington_County_dp04_2016, dp_table_variables, by = "variable")
    
    Washington_County_dp05_16 <- inner_join(Washington_County_dp05_2016, dp_table_variables, by = "variable")
    
    ####2015####
    
    ##Washington
    
    Washington_County_dp02_15 <- inner_join(Washington_County_dp02_2015, dp_table_variables, by = "variable")
    
    Washington_County_dp03_15 <- inner_join(Washington_County_dp03_2015, dp_table_variables, by = "variable")
    
    Washington_County_dp04_15 <- inner_join(Washington_County_dp04_2015, dp_table_variables, by = "variable")
    
    Washington_County_dp05_15 <- inner_join(Washington_County_dp05_2015, dp_table_variables, by = "variable")
    
    ####2014####
    
    ##Washington
    
    Washington_County_dp02_14 <- inner_join(Washington_County_dp02_2014, dp_table_variables, by = "variable")
    
    Washington_County_dp03_14 <- inner_join(Washington_County_dp03_2014, dp_table_variables, by = "variable")
    
    Washington_County_dp04_14 <- inner_join(Washington_County_dp04_2014, dp_table_variables, by = "variable")
    
    Washington_County_dp05_14 <- inner_join(Washington_County_dp05_2014, dp_table_variables, by = "variable")
    
    ####2013####
    
    ##Washington
    
    Washington_County_dp02_13 <- inner_join(Washington_County_dp02_2013, dp_table_variables, by = "variable")
    
    Washington_County_dp03_13 <- inner_join(Washington_County_dp03_2013, dp_table_variables, by = "variable")
    
    Washington_County_dp04_13 <- inner_join(Washington_County_dp04_2013, dp_table_variables, by = "variable")
    
    Washington_County_dp05_13 <- inner_join(Washington_County_dp05_2013, dp_table_variables, by = "variable")
    
    ####2017####
    
    ##Unicoi
    
    Unicoi_County_dp02_17 <- inner_join(Unicoi_County_dp02_2017, dp_table_variables, by = "variable")
    
    Unicoi_County_dp03_17 <- inner_join(Unicoi_County_dp03_2017, dp_table_variables, by = "variable")
    
    Unicoi_County_dp04_17 <- inner_join(Unicoi_County_dp04_2017, dp_table_variables, by = "variable")
    
    Unicoi_County_dp05_17 <- inner_join(Unicoi_County_dp05_2017, dp_table_variables, by = "variable")
    
    ####2016####
    
    ##Unicoi
    
    Unicoi_County_dp02_16 <- inner_join(Unicoi_County_dp02_2016, dp_table_variables, by = "variable")
    
    Unicoi_County_dp03_16 <- inner_join(Unicoi_County_dp03_2016, dp_table_variables, by = "variable")
    
    Unicoi_County_dp04_16 <- inner_join(Unicoi_County_dp04_2016, dp_table_variables, by = "variable")
    
    Unicoi_County_dp05_16 <- inner_join(Unicoi_County_dp05_2016, dp_table_variables, by = "variable")
    
    ####2015####
    
    ##Unicoi
    
    Unicoi_County_dp02_15 <- inner_join(Unicoi_County_dp02_2015, dp_table_variables, by = "variable")
    
    Unicoi_County_dp03_15 <- inner_join(Unicoi_County_dp03_2015, dp_table_variables, by = "variable")
    
    Unicoi_County_dp04_15 <- inner_join(Unicoi_County_dp04_2015, dp_table_variables, by = "variable")
    
    Unicoi_County_dp05_15 <- inner_join(Unicoi_County_dp05_2015, dp_table_variables, by = "variable")
    
    ####2014####
    
    ##Unicoi
    
    Unicoi_County_dp02_14 <- inner_join(Unicoi_County_dp02_2014, dp_table_variables, by = "variable")
    
    Unicoi_County_dp03_14 <- inner_join(Unicoi_County_dp03_2014, dp_table_variables, by = "variable")
    
    Unicoi_County_dp04_14 <- inner_join(Unicoi_County_dp04_2014, dp_table_variables, by = "variable")
    
    Unicoi_County_dp05_14 <- inner_join(Unicoi_County_dp05_2014, dp_table_variables, by = "variable")
    
    ####2013####
    
    ##Unicoi
    
    Unicoi_County_dp02_13 <- inner_join(Unicoi_County_dp02_2013, dp_table_variables, by = "variable")
    
    Unicoi_County_dp03_13 <- inner_join(Unicoi_County_dp03_2013, dp_table_variables, by = "variable")
    
    Unicoi_County_dp04_13 <- inner_join(Unicoi_County_dp04_2013, dp_table_variables, by = "variable")
    
    Unicoi_County_dp05_13 <- inner_join(Unicoi_County_dp05_2013, dp_table_variables, by = "variable")
    
    ####combine all the counties into their respective data tables####
    
    
    #2017
    
    County_dp02_17 <- rbind(Carter_County_dp02_17, Greene_County_dp02_17, Hancock_County_dp02_17, Hawkins_County_dp02_17, Johnson_County_dp02_17, Sullivan_County_dp02_17, Washington_County_dp02_17, Unicoi_County_dp02_17)
    
    County_dp03_17 <- rbind(Carter_County_dp03_17, Greene_County_dp03_17, Hancock_County_dp03_17, Hawkins_County_dp03_17, Johnson_County_dp03_17, Sullivan_County_dp03_17, Washington_County_dp03_17, Unicoi_County_dp03_17)
    
    County_dp04_17 <- rbind(Carter_County_dp04_17, Greene_County_dp04_17, Hancock_County_dp04_17, Hawkins_County_dp04_17, Johnson_County_dp04_17, Sullivan_County_dp04_17, Washington_County_dp04_17, Unicoi_County_dp04_17)
    
    County_dp05_17 <- rbind(Carter_County_dp05_17, Greene_County_dp05_17, Hancock_County_dp05_17, Hawkins_County_dp05_17, Johnson_County_dp05_17, Sullivan_County_dp05_17, Washington_County_dp05_17, Unicoi_County_dp05_17)
    
    #2016
    
    County_dp02_16 <- rbind(Carter_County_dp02_16, Greene_County_dp02_16, Hancock_County_dp02_16, Hawkins_County_dp02_16, Johnson_County_dp02_16, Sullivan_County_dp02_16, Washington_County_dp02_16, Unicoi_County_dp02_16)
    
    County_dp03_16 <- rbind(Carter_County_dp03_16, Greene_County_dp03_16, Hancock_County_dp03_16, Hawkins_County_dp03_16, Johnson_County_dp03_16, Sullivan_County_dp03_16, Washington_County_dp03_16, Unicoi_County_dp03_16)
    
    County_dp04_16 <- rbind(Carter_County_dp04_16, Greene_County_dp04_16, Hancock_County_dp04_16, Hawkins_County_dp04_16, Johnson_County_dp04_16, Sullivan_County_dp04_16, Washington_County_dp04_16, Unicoi_County_dp04_16)
    
    County_dp05_16 <- rbind(Carter_County_dp05_16, Greene_County_dp05_16, Hancock_County_dp05_16, Hawkins_County_dp05_16, Johnson_County_dp05_16, Sullivan_County_dp05_16, Washington_County_dp05_16, Unicoi_County_dp05_16)
    
    #2015
    
    County_dp02_15 <- rbind(Carter_County_dp02_15, Greene_County_dp02_15, Hancock_County_dp02_15, Hawkins_County_dp02_15, Johnson_County_dp02_15, Sullivan_County_dp02_15, Washington_County_dp02_15, Unicoi_County_dp02_15)
    
    County_dp03_15 <- rbind(Carter_County_dp03_15, Greene_County_dp03_15, Hancock_County_dp03_15, Hawkins_County_dp03_15, Johnson_County_dp03_15, Sullivan_County_dp03_15, Washington_County_dp03_15, Unicoi_County_dp03_15)
    
    County_dp04_15 <- rbind(Carter_County_dp04_15, Greene_County_dp04_15, Hancock_County_dp04_15, Hawkins_County_dp04_15, Johnson_County_dp04_15, Sullivan_County_dp04_15, Washington_County_dp04_15, Unicoi_County_dp04_15)
    
    County_dp05_15 <- rbind(Carter_County_dp05_15, Greene_County_dp05_15, Hancock_County_dp05_15, Hawkins_County_dp05_15, Johnson_County_dp05_15, Sullivan_County_dp05_15, Washington_County_dp05_15, Unicoi_County_dp05_15)
    
    #2014
    
    County_dp02_14 <- rbind(Carter_County_dp02_14, Greene_County_dp02_14, Hancock_County_dp02_14, Hawkins_County_dp02_14, Johnson_County_dp02_14, Sullivan_County_dp02_14, Washington_County_dp02_14, Unicoi_County_dp02_14)
    
    County_dp03_14 <- rbind(Carter_County_dp03_14, Greene_County_dp03_14, Hancock_County_dp03_14, Hawkins_County_dp03_14, Johnson_County_dp03_14, Sullivan_County_dp03_14, Washington_County_dp03_14, Unicoi_County_dp03_14)
    
    County_dp04_14 <- rbind(Carter_County_dp04_14, Greene_County_dp04_14, Hancock_County_dp04_14, Hawkins_County_dp04_14, Johnson_County_dp04_14, Sullivan_County_dp04_14, Washington_County_dp04_14, Unicoi_County_dp04_14)
    
    County_dp05_14 <- rbind(Carter_County_dp05_14, Greene_County_dp05_14, Hancock_County_dp05_14, Hawkins_County_dp05_14, Johnson_County_dp05_14, Sullivan_County_dp05_14, Washington_County_dp05_14, Unicoi_County_dp05_14)
    
    #2013
    
    County_dp02_13 <- rbind(Carter_County_dp02_13, Greene_County_dp02_13, Hancock_County_dp02_13, Hawkins_County_dp02_13, Johnson_County_dp02_13, Sullivan_County_dp02_13, Washington_County_dp02_13, Unicoi_County_dp02_13)
    
    County_dp03_13 <- rbind(Carter_County_dp03_13, Greene_County_dp03_13, Hancock_County_dp03_13, Hawkins_County_dp03_13, Johnson_County_dp03_13, Sullivan_County_dp03_13, Washington_County_dp03_13, Unicoi_County_dp03_13)
    
    County_dp04_13 <- rbind(Carter_County_dp04_13, Greene_County_dp04_13, Hancock_County_dp04_13, Hawkins_County_dp04_13, Johnson_County_dp04_13, Sullivan_County_dp04_13, Washington_County_dp04_13, Unicoi_County_dp04_13)
    
    County_dp05_13 <- rbind(Carter_County_dp05_13, Greene_County_dp05_13, Hancock_County_dp05_13, Hawkins_County_dp05_13, Johnson_County_dp05_13, Sullivan_County_dp05_13, Washington_County_dp05_13, Unicoi_County_dp05_13)
    
    #2017#
    
    County_dp_2017 <- rbind(County_dp02_17, County_dp03_17, County_dp04_17, County_dp05_17)
    
    year <- rep(2017, length(County_dp_2017$NAME))
    
    County_dp_2017 <- cbind(year, County_dp_2017)
    
    #2016  
    
    County_dp_2016 <- rbind(County_dp02_16, County_dp03_16, County_dp04_16, County_dp05_16)
    
    year <- rep(2016, length(County_dp_2016$NAME))
    
    County_dp_2016 <- cbind(year, County_dp_2016)
    
    #2015
    
    County_dp_2015 <- rbind(County_dp02_15, County_dp03_15, County_dp04_15, County_dp05_15)
    
    year <- rep(2015, length(County_dp_2015$NAME))
    
    County_dp_2015 <- cbind(year, County_dp_2015)
    
    #2014
    
    County_dp_2014 <- rbind(County_dp02_14, County_dp03_14, County_dp04_14, County_dp05_14)
    
    year <- rep(2014, length(County_dp_2014$NAME))
    
    County_dp_2014 <- cbind(year, County_dp_2014)
    
    #2013
    
    County_dp_2013 <- rbind(County_dp02_13, County_dp03_13, County_dp04_13, County_dp05_13)
    
    year <- rep(2013, length(County_dp_2013$NAME))
    
    County_dp_2013 <- cbind(year, County_dp_2013)
    
    ###combine it all into a county level data profile
    
    County_data_profile <- rbind(County_dp_2017, County_dp_2016, County_dp_2015, County_dp_2014, County_dp_2013)
    
    
    
    
    
    
    
        
####now actually play with the data####

    data_profile %>%
      filter(variable == "DP02_0040")%>%
      group_by(NAME) %>%
      summarise(mean(estimate))
      
    
    foriegn_born <- data_profile %>%
                      filter(variable == "DP02_0092P") %>%
                      group_by(year, NAME)
    
    test <-ggplot(foriegn_born, aes(fill = estimate))+
      geom_sf()+
      labs(title = "Year: {frame}")+
      transition_manual(year)+
      ease_aes('linear')
    
    test
    
    test2 <- ggplot(foriegn_born)+
      geom_sf(aes(fill = estimate, group = year))+
      labs(title = "Year: {frame_time}", fill = "Percent Population Born Outside of US")+
      transition_time(year)
  
    animate(test2, height = 1500, width = 1000)
    anim_save("test2.gif")
    
    ###it works but it needs to stay on the last frame longer###
    
    data_profile 
    
    
   length(foriegn_born$year)
  590/5
  dim(foriegn_born %>%
    filter(year == 2017))
  length(foriegn_born$average_people_not_born_in_us)
  
  foriegn_born %>%
    group_by(NAME) %>%
    summarize(count = n())
  
  sessionInfo()

  
  ###divorced guys###
  names(data_profile)
  
  my_wife_left_me <- data_profile %>%
    filter(variable == "DP02_0029P")
  
  wife_plot <-ggplot(my_wife_left_me)+
    geom_sf(aes(fill = estimate, group = year))+
    labs(title = "Year: {as.integer(frame_time)}", fill = "% Men who's wife left them")+
    transition_time(year)

  animate(wife_plot, end_pause = 10, height = 2000, width = 1500)  
  anim_save("my_wife_left_me.gif")
  
  
  
