########lets build a dumb algorithm######
 
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
  ####data is in the data_profile df, need to find variables for these categories, then additional ones for headstart stuff####
    
      ##employment
        ##DP03_0005 16 and over civilian unmployed rate
        ##DP03_0005P 16 and over civilian unmployed rate
      
      ##races
        ##white = DP05_0037P
        ##black = DP05_0038P
          ##any part black = DP05_0065 
        ##native = DP05_0039P
            ##DP05_0040 through DP05_0043 are different tribal groups
          ##any part native = DP05_0066P
          
        ##asian = DP05_0044P
          ##any part asian = DP05_0067P
          ##indian = DP05_0045P
        ##hawaiian = DP05_0053P
          ##any part islander = DP05_0068P
        ##hispanic = DP05_0070
          
        ##two or more races = DP05_0058P
        
      
      ##education
      ##income management
      ##housing
      ##emergency services
      ##nutrition
      ##linkages
      ##self sufficiency
      ##health
      ##services for youth
      ##services for senior citizens
      ##stuff for under 5 and over 65
          ##under 5 = DP05_0005P
          ##over 65 = DP05_0024P
      ##single mothers
info()  
System.info()    
