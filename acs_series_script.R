###data for the past 5 years of acs to show trends###

####load packages####
library(acs)
library(tidyverse)
library(tidycensus)
library(urbnmapr)
library(tigris)
library(leaflet)
library(mapview)

####need variables####
dp_table_variables <- load_variables(2017, "acs5/profile", cache = TRUE)

View(dp_table_variables)

##varibales need new names to join and maker better##



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



