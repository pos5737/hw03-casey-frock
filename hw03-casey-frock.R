#load packages
library(tidyverse)

#load data from files section of RStudio

#rename data set
elec <- (es_data_v4_0)

#quick look
glimpse(elec)

#select certain columns
elec_2 <- select(elec,country, presidential, legislative_type, elecrule, enep, month, day, year, fh_democracy)  

#remove "&" symbol and add "and"
elec_3 <- mutate(elec_2, country = str_replace(country, patter = "&", replacement = "and"))

#remove "NA" and replace with a blank space
#elec_4 <- mutate(elec_3, fh_democracy = str_replace(fh_democracy, patter = "NA", replacement = " "))

#check graph
ggplot(elec_4, aes(x = enep, y = country)) + 
  geom_point()

#remove bad symbol for no data, replace with "NA"
elec_5 <- mutate(elec_4, enep = str_replace(enep, patter = "-99.000000", replacement = "NA"))

#remove bad symbol for no data
elec_5 <- mutate(elec_4, enep = str_replace(enep, patter = "-99", replacement = "NA"))

#check graph
ggplot(elec_5, aes(x = enep, y = country)) + 
  geom_point()

#quick look
glimpse(elec_5)

#review
summary(elec_5)

#save files
write_csv(elec_5, "data/elec_data.csv")
write_rds(elec_5, "data/elec_data.rds")

#save plot
ggsave("docs/figs/election_plot.pdf", height = 5, width = 8)
