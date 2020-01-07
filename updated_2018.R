##carter##

Carter_dp02_2018 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Carter_dp03_2018 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Carter_dp04_2018 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Carter_dp05_2018 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

##greene##


Greene_dp02_2018 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Greene_dp03_2018 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Greene_dp04_2018 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Greene_dp05_2018 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

##hancock

Hancock_dp02_2018 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Hancock_dp03_2018 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Hancock_dp04_2018 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Hancock_dp05_2018 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

##hawkins

Hawkins_dp02_2018 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Hawkins_dp03_2018 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Hawkins_dp04_2018 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Hawkins_dp05_2018 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP05", year = 2018, geometry = TRUE)


##johnson

Johnson_dp02_2018 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Johnson_dp03_2018 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Johnson_dp04_2018 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Johnson_dp05_2018 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

##sullivan

Sullivan_dp02_2018 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Sullivan_dp03_2018 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Sullivan_dp04_2018 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Sullivan_dp05_2018 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

##washington


Washington_dp02_2018 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Washington_dp03_2018 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Washington_dp04_2018 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Washington_dp05_2018 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

##unicoi

Unicoi_dp02_2018 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Unicoi_dp03_2018 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Unicoi_dp04_2018 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Unicoi_dp05_2018 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP05", year = 2018, geometry = TRUE)


####2018####

##carter

Carter_dp02_18 <- inner_join(Carter_dp02_2018, dp_table_variables, by = "variable")

Carter_dp03_18 <- inner_join(Carter_dp03_2018, dp_table_variables, by = "variable")

Carter_dp04_18 <- inner_join(Carter_dp04_2018, dp_table_variables, by = "variable")

Carter_dp05_18 <- inner_join(Carter_dp05_2018, dp_table_variables, by = "variable")

##greene

Greene_dp02_18 <- inner_join(Greene_dp02_2018, dp_table_variables, by = "variable")

Greene_dp03_18 <- inner_join(Greene_dp03_2018, dp_table_variables, by = "variable")

Greene_dp04_18 <- inner_join(Greene_dp04_2018, dp_table_variables, by = "variable")

Greene_dp05_18 <- inner_join(Greene_dp05_2018, dp_table_variables, by = "variable")

##hancock

Hancock_dp02_18 <- inner_join(Hancock_dp02_2018, dp_table_variables, by = "variable")

Hancock_dp03_18 <- inner_join(Hancock_dp03_2018, dp_table_variables, by = "variable")

Hancock_dp04_18 <- inner_join(Hancock_dp04_2018, dp_table_variables, by = "variable")

Hancock_dp05_18 <- inner_join(Hancock_dp05_2018, dp_table_variables, by = "variable")

##hawkins  

Hawkins_dp02_18 <- inner_join(Hawkins_dp02_2018, dp_table_variables, by = "variable")

Hawkins_dp03_18 <- inner_join(Hawkins_dp03_2018, dp_table_variables, by = "variable")

Hawkins_dp04_18 <- inner_join(Hawkins_dp04_2018, dp_table_variables, by = "variable")

Hawkins_dp05_18 <- inner_join(Hawkins_dp05_2018, dp_table_variables, by = "variable")

##johnson

Johnson_dp02_18 <- inner_join(Johnson_dp02_2018, dp_table_variables, by = "variable")

Johnson_dp03_18 <- inner_join(Johnson_dp03_2018, dp_table_variables, by = "variable")

Johnson_dp04_18 <- inner_join(Johnson_dp04_2018, dp_table_variables, by = "variable")

Johnson_dp05_18 <- inner_join(Johnson_dp05_2018, dp_table_variables, by = "variable")

##sullivan

Sullivan_dp02_18 <- inner_join(Sullivan_dp02_2018, dp_table_variables, by = "variable")

Sullivan_dp03_18 <- inner_join(Sullivan_dp03_2018, dp_table_variables, by = "variable")

Sullivan_dp04_18 <- inner_join(Sullivan_dp04_2018, dp_table_variables, by = "variable")

Sullivan_dp05_18 <- inner_join(Sullivan_dp05_2018, dp_table_variables, by = "variable")

##washington

Washington_dp02_18 <- inner_join(Washington_dp02_2018, dp_table_variables, by = "variable")

Washington_dp03_18 <- inner_join(Washington_dp03_2018, dp_table_variables, by = "variable")

Washington_dp04_18 <- inner_join(Washington_dp04_2018, dp_table_variables, by = "variable")

Washington_dp05_18 <- inner_join(Washington_dp05_2018, dp_table_variables, by = "variable")

##unicoi

Unicoi_dp02_18 <- inner_join(Unicoi_dp02_2018, dp_table_variables, by = "variable")

Unicoi_dp03_18 <- inner_join(Unicoi_dp03_2018, dp_table_variables, by = "variable")

Unicoi_dp04_18 <- inner_join(Unicoi_dp04_2018, dp_table_variables, by = "variable")

Unicoi_dp05_18 <- inner_join(Unicoi_dp05_2018, dp_table_variables, by = "variable")

####2018####

dp02_18 <- rbind(Carter_dp02_18, Greene_dp02_18, Hancock_dp02_18, Hawkins_dp02_18, Johnson_dp02_18, Sullivan_dp02_18, Washington_dp02_18, Unicoi_dp02_18)

dp03_18 <- rbind(Carter_dp03_18, Greene_dp03_18, Hancock_dp03_18, Hawkins_dp03_18, Johnson_dp03_18, Sullivan_dp03_18, Washington_dp03_18, Unicoi_dp03_18)

dp04_18 <- rbind(Carter_dp04_18, Greene_dp04_18, Hancock_dp04_18, Hawkins_dp04_18, Johnson_dp04_18, Sullivan_dp04_18, Washington_dp04_18, Unicoi_dp04_18)

dp05_18 <- rbind(Carter_dp05_18, Greene_dp05_18, Hancock_dp05_18, Hawkins_dp05_18, Johnson_dp05_18, Sullivan_dp05_18, Washington_dp05_18, Unicoi_dp05_18)

#2018#

dp_2018 <- rbind(dp02_18, dp03_18, dp04_18, dp05_18)

year <- rep(2018, length(dp_2018$NAME))

dp_2018 <- cbind(year, dp_2018)




#Carter

#2018

Carter_County_dp02_2018 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Carter_County_dp03_2018 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Carter_County_dp04_2018 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Carter_County_dp05_2018 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

#Greene

#2018

Greene_County_dp02_2018 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Greene_County_dp03_2018 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Greene_County_dp04_2018 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Greene_County_dp05_2018 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

#Hancock

#2018

Hancock_County_dp02_2018 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Hancock_County_dp03_2018 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Hancock_County_dp04_2018 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Hancock_County_dp05_2018 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

#Hawkins

#2018

Hawkins_County_dp02_2018 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Hawkins_County_dp03_2018 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Hawkins_County_dp04_2018 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Hawkins_County_dp05_2018 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

#Johnson

#2018

Johnson_County_dp02_2018 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Johnson_County_dp03_2018 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Johnson_County_dp04_2018 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Johnson_County_dp05_2018 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

#Sullivan

#2018

Sullivan_County_dp02_2018 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Sullivan_County_dp03_2018 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Sullivan_County_dp04_2018 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Sullivan_County_dp05_2018 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

#Washington

#2018

Washington_County_dp02_2018 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Washington_County_dp03_2018 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Washington_County_dp04_2018 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Washington_County_dp05_2018 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

#Unicoi

#2018

Unicoi_County_dp02_2018 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Unicoi_County_dp03_2018 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Unicoi_County_dp04_2018 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Unicoi_County_dp05_2018 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP05", year = 2018, geometry = TRUE)


####2018####

##carter

Carter_County_dp02_18 <- inner_join(Carter_County_dp02_2018, dp_table_variables, by = "variable")

Carter_County_dp03_18 <- inner_join(Carter_County_dp03_2018, dp_table_variables, by = "variable")

Carter_County_dp04_18 <- inner_join(Carter_County_dp04_2018, dp_table_variables, by = "variable")

Carter_County_dp05_18 <- inner_join(Carter_County_dp05_2018, dp_table_variables, by = "variable")

####2018####

##Greene

Greene_County_dp02_18 <- inner_join(Greene_County_dp02_2018, dp_table_variables, by = "variable")

Greene_County_dp03_18 <- inner_join(Greene_County_dp03_2018, dp_table_variables, by = "variable")

Greene_County_dp04_18 <- inner_join(Greene_County_dp04_2018, dp_table_variables, by = "variable")

Greene_County_dp05_18 <- inner_join(Greene_County_dp05_2018, dp_table_variables, by = "variable")

####2018####

##Hancock

Hancock_County_dp02_18 <- inner_join(Hancock_County_dp02_2018, dp_table_variables, by = "variable")

Hancock_County_dp03_18 <- inner_join(Hancock_County_dp03_2018, dp_table_variables, by = "variable")

Hancock_County_dp04_18 <- inner_join(Hancock_County_dp04_2018, dp_table_variables, by = "variable")

Hancock_County_dp05_18 <- inner_join(Hancock_County_dp05_2018, dp_table_variables, by = "variable")  

####2018####

##Hawkins

Hawkins_County_dp02_18 <- inner_join(Hawkins_County_dp02_2018, dp_table_variables, by = "variable")

Hawkins_County_dp03_18 <- inner_join(Hawkins_County_dp03_2018, dp_table_variables, by = "variable")

Hawkins_County_dp04_18 <- inner_join(Hawkins_County_dp04_2018, dp_table_variables, by = "variable")

Hawkins_County_dp05_18 <- inner_join(Hawkins_County_dp05_2018, dp_table_variables, by = "variable")

####2018####

##Johnson

Johnson_County_dp02_18 <- inner_join(Johnson_County_dp02_2018, dp_table_variables, by = "variable")

Johnson_County_dp03_18 <- inner_join(Johnson_County_dp03_2018, dp_table_variables, by = "variable")

Johnson_County_dp04_18 <- inner_join(Johnson_County_dp04_2018, dp_table_variables, by = "variable")

Johnson_County_dp05_18 <- inner_join(Johnson_County_dp05_2018, dp_table_variables, by = "variable")

####2018####

##Sullivan

Sullivan_County_dp02_18 <- inner_join(Sullivan_County_dp02_2018, dp_table_variables, by = "variable")

Sullivan_County_dp03_18 <- inner_join(Sullivan_County_dp03_2018, dp_table_variables, by = "variable")

Sullivan_County_dp04_18 <- inner_join(Sullivan_County_dp04_2018, dp_table_variables, by = "variable")

Sullivan_County_dp05_18 <- inner_join(Sullivan_County_dp05_2018, dp_table_variables, by = "variable")

####2018####

##Washington

Washington_County_dp02_18 <- inner_join(Washington_County_dp02_2018, dp_table_variables, by = "variable")

Washington_County_dp03_18 <- inner_join(Washington_County_dp03_2018, dp_table_variables, by = "variable")

Washington_County_dp04_18 <- inner_join(Washington_County_dp04_2018, dp_table_variables, by = "variable")

Washington_County_dp05_18 <- inner_join(Washington_County_dp05_2018, dp_table_variables, by = "variable")

####2018####

##Unicoi

Unicoi_County_dp02_18 <- inner_join(Unicoi_County_dp02_2018, dp_table_variables, by = "variable")

Unicoi_County_dp03_18 <- inner_join(Unicoi_County_dp03_2018, dp_table_variables, by = "variable")

Unicoi_County_dp04_18 <- inner_join(Unicoi_County_dp04_2018, dp_table_variables, by = "variable")

Unicoi_County_dp05_18 <- inner_join(Unicoi_County_dp05_2018, dp_table_variables, by = "variable")

#2018

County_dp02_18 <- rbind(Carter_County_dp02_18, Greene_County_dp02_18, Hancock_County_dp02_18, Hawkins_County_dp02_18, Johnson_County_dp02_18, Sullivan_County_dp02_18, Washington_County_dp02_18, Unicoi_County_dp02_18)

County_dp03_18 <- rbind(Carter_County_dp03_18, Greene_County_dp03_18, Hancock_County_dp03_18, Hawkins_County_dp03_18, Johnson_County_dp03_18, Sullivan_County_dp03_18, Washington_County_dp03_18, Unicoi_County_dp03_18)

County_dp04_18 <- rbind(Carter_County_dp04_18, Greene_County_dp04_18, Hancock_County_dp04_18, Hawkins_County_dp04_18, Johnson_County_dp04_18, Sullivan_County_dp04_18, Washington_County_dp04_18, Unicoi_County_dp04_18)

County_dp05_18 <- rbind(Carter_County_dp05_18, Greene_County_dp05_18, Hancock_County_dp05_18, Hawkins_County_dp05_18, Johnson_County_dp05_18, Sullivan_County_dp05_18, Washington_County_dp05_18, Unicoi_County_dp05_18)

###fix the county dataframe###

County_dp_2018 <- rbind(County_dp02_18, County_dp03_18, County_dp04_18, County_dp05_18)

year <- rep(2018, length(County_dp_2018$NAME))

County_dp_2018 <- cbind(year, County_dp_2018) 

    
###update the final data frames ###

data_profile <- rbind(dp_2018, dp_2017, dp_2016, dp_2015, dp_2014, dp_2013)

County_data_profile <- rbind(County_dp_2018, County_dp_2017, County_dp_2016, County_dp_2015, County_dp_2014, County_dp_2013)

View(data_profile)

View(dp_table_variables)

u5_poverty_2018 <- data_profile %>%
  filter(variable == "DP03_0121P") %>%
  filter(year == 2018)

u5_poverty_2017 <- data_profile %>%
  filter(variable == "DP03_0121P") %>%
  filter(year == 2017)

u5_poverty_2016 <- data_profile %>%
  filter(variable == "DP03_0121P") %>%
  filter(year == 2016)

u5_poverty_2015 <- data_profile %>%
  filter(variable == "DP03_0121P") %>%
  filter(year == 2015)

u5_poverty_2014 <- data_profile %>%
  filter(variable == "DP03_0121P") %>%
  filter(year == 2014)


m2018 <- mapview(u5_poverty_2018, zcol = "estimate")

m2017 <- mapview(u5_poverty_2017, zcol = "estimate")

m2016 <- mapview(u5_poverty_2016, zcol = "estimate")

m2015 <- mapview(u5_poverty_2015, zcol = "estimate")

m2014 <- mapview(u5_poverty_2014, zcol = "estimate")

sync(m2018, m2017, m2016, m2015, m2014)


####add in overall counties per year to this####

u5_poverty_county_2018 <- County_data_profile %>%
  filter(variable == "DP03_0121P") %>%
  filter(year == 2018)


u5_poverty_county_2017 <- County_data_profile %>%
  filter(variable == "DP03_0121P") %>%
  filter(year == 2017)

u5_poverty_county_2016 <- County_data_profile %>%
  filter(variable == "DP03_0121P") %>%
  filter(year == 2016)

u5_poverty_county_2015 <- County_data_profile %>%
  filter(variable == "DP03_0121P") %>%
  filter(year == 2015)

u5_poverty_county_2014 <- County_data_profile %>%
  filter(variable == "DP03_0121P") %>%
  filter(year == 2014)

m2018_county <- mapview(u5_poverty_county_2018, zcol = "estimate")

m2017_county <- mapview(u5_poverty_county_2017, zcol = "estimate")

m2016_county <- mapview(u5_poverty_county_2016, zcol = "estimate")

m2015_county <- mapview(u5_poverty_county_2015, zcol = "estimate")

m2014_county <- mapview(u5_poverty_county_2014, zcol = "estimate")

map2018 <- m2018 + m2018_county

map2017 <- m2017 + m2017_county

map2016 <- m2016 + m2016_county

map2015 <- m2015 + m2015_county

map2014 <- m2014 + m2014_county

sync(map2018, map2017, map2016, map2015)
