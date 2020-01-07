########lets build a dumb algorithm######
    census_api_key("0db6c1cb3f5986242af9f40f76060b289cee055c", install = TRUE)
  
  ####load the packages####   
    library(acs)
    library(tidyverse)
    library(tidycensus)
    library(urbnmapr)
    library(tigris)
    library(leaflet)
    library(mapview)
    library(tmap)
    library(gganimate)
    
  #####we've already loaded the data, the entire script must be ran to load it in the background. this is from the ACS_SERIES_SCRIPT.R####

    head(data_profile)
    View(dp_table_variables)
    
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
              
            
             
  ####tract data is in the data_profile df, need to find variables for these categories, then additional ones for headstart stuff####
    ##county level data is in the County_data_profile df
      
      ##employment
        ##DP03_0005 16 and over civilian unmployed rate
        ##DP03_0005P 16 and over civilian unmployed rate
      
      ##races
        ##white = DP05_0037P
        ##white alone = DP05_0077
        ##black = DP05_0038P
          ##any part black = DP05_0065 
          ##aa alone = DP05_0078
        ##native = DP05_0039P
            ##DP05_0040 through DP05_0043 are different tribal groups
          ##any part native = DP05_0066P
          
        ##asian = DP05_0044P
          ##any part asian = DP05_0067P
          ##indian = DP05_0045P
        ##hawaiian = DP05_0053P
          ##any part islander = DP05_0068P
        ##hispanic = DP05_0070P
          
        ##two or more races = DP05_0058P
        
      
      ##education
        ##less than 9th grade = DP02_0059
        ##9-12th grade no diploma = DP02_0060
        ##hs or ged = DP02_0061
        ##some college no degree = DP02_0062
        ##associates = DP02_0063
        ##bachelors = DP02_0064
        ##graduate = DP02_0065
        ##hs or higher percent = DP02_0066P
    
      ##income management/poverty rates 
        ##everyone past 12 months = DP03_0019
        ##househould children under 5 = DP03_0121 
        ##related children under 5 = DP03_0124
        ##single female households no husband = DP03_0125
        ##single female households with children under 5 = DP03_0127
        ##greater than 65 = DP03_0135
        ##below median income
        ##median household income = DP03_0062
          data_profile %>%
              filter(variable == "DP03_0062", year == 2017) %>%
              select(estimate) %>%
              mapview()
              
    
        ##mean social security income = DP03_0067
        ##mean retirement income = DP03_0069
        ##mean cash public assistance income = DP03_0073
        ##SNAP/foodstamps in 12 months = DP03_0074
        
      
      
      ##housing
        ##monthly owner costs as percentage of household income with mortgage 35% or more = DP04_0115
        ##monthly owner costs as percentage of household income without mortage 35% or more = DP04_0124
        ##rent as percentage of household income 25-29.9% = DP04_0140
        ##rent as percentage of household income 30-34.9% = DP04_0141
        ##rent as percentage of household income >35% = DP04_0142
        ##median rent = DP04_0134
        ##total housing units = DP04_0001
        ##occupied housing units = DP04_0002
        ##vacant housing units = DP04_0003
        ##homeowner vacancy rate = DP04_0004
        ##rental vacancy rate = DP04_0005
        ##housing units moved into 2015 or later = DP04_0051
        ##no vehicles available occupied housing units = DP04_0058
        ##1 vehicle available occupied housing units = DP04_0059
        ##occupied housing units no heat = DP04_0071
        ##occupied housing units wood heat = DP04_0068
        ##occupied housing units coal = DP04_0067
        ##occupied housing units bottled tank or lp gas = DP04_0064
        ##occupied housing units fuel oil or kerosene = DP04_0066
        ##occupied housing units lacking complete plumping = DP04_0073
        ##occupied housing units lacking complete kitchen = DP04_0074
        ##occupied housing units no telephone services = DP04_0075
        ##occupied housing units occupants per room > 1.51 = DP04_0079
        ##workers 16 and over using public transportation to work = DP03_0021
        ##    
    
    
      ##emergency services
      ##nutrition
      ##linkages
      ##self sufficiency
      ##health
          #no health insurance coverage = DP03_0099 
          #public health insurance coverage = DP03_0098
          #unempployed public coverage 19-64 = DP03_0112
          #unemployed no coverage = DP03_0113
          #with a disability = DP02_0071
          #<18 with a disability = 	DP02_0073
          #18-64 with a disability = 	DP02_0075
          #>65 with a disability = DP02_0077  
            
      ##services for youth
      ##services for senior citizens
      ##stuff for under 5 and over 65
          ##under 5 = DP05_0005P
          ##over 65 = DP05_0024P
      ##single mothers
        #female household with no husband and children under 18 = DP02_0009
        #unmarried women 15-50 given birth past 12 months = DP02_0037
        #given birth past 12 months = DP02_0036
        #teen mothers given birth past 12 months = DP02_0040
            
  ####select the variables, rename them, make it less shitty looking####
            

        vars_to_keep <- c("DP03_0005", "DP03_0005P", "DP05_0037", "DP05_0037P",
                          "DP05_0038", "DP05_0038P", "DP05_0065", "DP05_0065P",
                          "DP05_0078", "DP05_0078P", "DP05_0039", "DP05_0039P",
                          "DP05_0066", "DP05_0066P", "DP05_0044", "DP05_0044P",
                          "DP05_0070", "DP05_0070P", "DP05_0058", "DP05_0058P",
                          "DP02_0059", "DP02_0059P", "DP02_0060", "DP02_0060P",
                          "DP02_0061", "DP02_0061P", "DP02_0062", "DP02_0062P",
                          "DP02_0063", "DP02_0063P", "DP02_0064", "DP02_0064P",
                          "DP02_0065", "DP02_0065P", "DP02_0066", "DP02_0066P",
                          "DP03_0019", "DP03_0019P", "DP03_0121", "DP03_0121P",
                          "DP03_0124", "DP03_0124P", "DP03_0125", "DP03_0125P",
                          "DP03_0127", "DP03_0127P", "DP03_0135", "DP03_0135P",
                          "DP03_0062", "DP03_0062P", "DP03_0067", "DP03_0067P",
                          "DP03_0069", "DP03_0069P", "DP03_0073", "DP03_0073P",
                          "DP03_0074", "DP03_0074P", "DP04_0115", "DP04_0115P",
                          "DP04_0124", "DP04_0124P", "DP04_0140", "DP04_0140P",
                          "DP04_0141", "DP04_0141P", "DP04_0142", "DP04_0142P",
                          "DP04_0134", "DP04_0134P", "DP04_0001", "DP04_0001P",
                          "DP04_0002", "DP04_0002P", "DP04_0003", "DP04_0003P",
                          "DP04_0004", "DP04_0004P", "DP04_0005", "DP04_0005P",
                          "DP04_0051", "DP04_0051P", "DP04_0058", "DP04_0058P",
                          "DP04_0059", "DP04_0059P", "DP04_0071", "DP04_0071P",
                          "DP04_0068", "DP04_0068P", "DP04_0067", "DP04_0067P",
                          "DP04_0064", "DP04_0066P", "DP04_0073", "DP04_0073P",
                          "DP04_0074", "DP04_0074P", "DP04_0075", "DP04_0075P",
                          "DP04_0079", "DP04_0079P", "DP03_0021", "DP03_0021P",
                          "DP03_0099", "DP03_0099P", "DP03_0098", "DP03_0098P",
                          "DP03_0112", "DP03_0112P", "DP03_0113", "DP03_0113P",
                          "DP02_0071", "DP02_0071P", "DP02_0073", "DP02_0073P",
                          "DP02_0075", "DP02_0075P", "DP02_0077", "DP02_0077P",
                          "DP05_0005", "DP05_0005P", "DP05_0024", "DP05_0024P",
                          "DP02_0009", "DP02_0009P", "DP02_0037", "DP02_0037P",
                          "DP02_0036", "DP02_0036P", "DP02_0040", "DP02_0040P")
        
              agl_df <- data_profile %>%
                    filter(variable %in% vars_to_keep)

              View(agl_df)

              sum(is.na(agl_df$estimate))  
              
              ####pull out 2017 to see if finding bad variables is easier####
              
              alg_df_2017 <- agl_df %>%
                filter(year == 2017)
              sum(is.na(alg_df_2017$estimate))              
              dim(alg_df_2017)
              
              names(alg_df_2017)
              
              alg_df_2017 %>%
                group_by(NAME) %>%
                summarize(count = n())
                
              sum(is.na(alg_df_2017$estimate)) / 118
              
              ###brain turned off, just dicking around now###
              
              alg_df_2017 %>%
                filter(variable == "DP04_0071P") %>%
                mapview(zcol = "estimate")
              
              mapview(alg_df_2017, zcol = "estimate", burst = TRUE)
              

              
####housing stuff####
              
              library(acs)
              library(tidyverse)
              library(tidycensus)
              library(tigris)
              library(leaflet)
              library(mapview)
              library(tmap)
              library(gganimate)
              library(sf)
              
              housing_vars <- c("DP04_0113", "DP04_0114", "DP04_0115", "DP04_0140", "DP04_0141", "DP04_0142", "DP04_0134", "DP04_0001", "DP04_0002", "DP04_0003", "DP04_0004", "DP04_0005", "DP04_0051",
                              "DP04_0113P", "DP04_0114P", "DP04_0115P", "DP04_0140P", "DP04_0141P", "DP04_0142P", "DP04_0134P", "DP04_0001P", "DP04_0002P", "DP04_0003P", "DP04_0004P", 
                              "DP04_0005P", "DP04_0051P","DP04_0071", "DP04_0068", "DP04_0067", "DP04_0064", "DP04_0066", "DP04_0073", "DP04_0074", "DP04_0075", "DP04_0079",
                              "DP04_0071P", "DP04_0068P", "DP04_0067P", "DP04_0064P", "DP04_0066P", "DP04_0073P", "DP04_0074P", "DP04_0075P", "DP04_0079P")          
              
              affordable_housing_vars <- c("DP04_0113", "DP04_0114", "DP04_0115", "DP04_0140", "DP04_0141", "DP04_0142", "DP04_0134", "DP04_0001", "DP04_0002", "DP04_0003", "DP04_0004", "DP04_0005", "DP04_0051",
                                           "DP04_0113P", "DP04_0114P", "DP04_0115P", "DP04_0140P", "DP04_0141P", "DP04_0142P", "DP04_0134P", "DP04_0001P", "DP04_0002P", "DP04_0003P", "DP04_0004P", "DP04_0005P", "DP04_0051P")
              
              heating_other_housing_vars <- c("DP04_0071", "DP04_0068", "DP04_0067", "DP04_0064", "DP04_0066", "DP04_0073", "DP04_0074", "DP04_0075", "DP04_0079",
                                              "DP04_0071P", "DP04_0068P", "DP04_0067P", "DP04_0064P", "DP04_0066P", "DP04_0073P", "DP04_0074P", "DP04_0075P", "DP04_0079P")
              
              housing_df <- data_profile %>%
                filter(variable %in% housing_vars)
              
              dim(housing_df)
              
              ah_df <- housing_df %>%
                filter(variable %in% affordable_housing_vars)
              
              oh_df <- housing_df %>%
                filter(variable %in% heating_other_housing_vars)
              
              View(dp_table_variables)
          
