#load packages
library(tidyverse)

#load data from files section of RStudio

#rename data set
elec <- (es_data_v4_0)

#quick look
glimpse(elec)

#select certain columns
elec_2 <- select(elec,country, presidential, legislative_type, elecrule, enep, month, day, year, fh_democracy)  

elec_3 <- mutate(elec_2, country = str_remove_all(country, pattern = "\\W"))
