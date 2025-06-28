# Install Packages
install.packages("tidyverse")
install.packages("dplyr")
install.packages("lubridate")

# Load the packages
library(tidyverse)
library(dplyr)
library(lubridate)

# Add path to folder
folder <- "~/divvy_2024/csv"

# Add files into R
data_files <- list.files(
  path = folder,
  pattern = "*.csv",
  full.names = TRUE
)

# Combines data into one dataframe
all_trips <- data_files %>% 
  lapply(read_csv) %>% 
  bind_rows()

# Cleaning data - Rename member_casual to rider_type 
all_trips <- all_trips %>% 
  rename(rider_type = member_casual)

# deduplicate
all_trips <- distinct(all_trips)

# Calculate Find Ride Length
all_trips <- all_trips %>%
  mutate(ride_length = as.numeric(difftime(ended_at, started_at, units = "mins")))

# Separate Start Date Time to Month, Day, Hour, Day of Week
all_trips <- all_trips %>%
  mutate(
    start_month = month(started_at, label = TRUE, abbr = TRUE), # "Jan"
    start_day = day(started_at),# day of month, 1–31
    start_hour = hour(started_at),# hour of day, 0–23
    start_weekday = wday(started_at, label = TRUE, abbr = TRUE) #"Mon"
  )

# Setting Sample Set to become Reproducible
set.seed(123)

# Sample 100,000 random rides
sample_trips <- all_trips %>% sample_n(100000)

# Export the sample for Tableau
write_csv(sample_trips, "divvy_sample-100000.csv")

