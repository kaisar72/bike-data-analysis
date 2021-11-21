bike_data <- rbind(sept.2020, oct.2020, nov.2020, dec.2020, jan.2021, feb.2021, mar.2021, apr.2021, jun.2021, jul.2021, aug.2021)
View(bike_data)

library(tidyverse)
library(dplyr)


glimpse(bike_data)
head(bike_data)

bike_data %>%
  select(-ride_id)

bike_data %>% 
  rename(member_or_casual=member_casual)

clean_names(bike_data)


ggplot(data = bike_data) + geom_point(mapping = aes(x = rideable_type, y = start_station_id))


ggplot(data = bike_data) +
  geom_bar(mapping = aes(x = member_casual))
