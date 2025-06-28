# Divvy 2024 - Customer Analysis in Chicago

This project analyzes customer and ride patterns for Divvy, Chicago’s official bike-sharing program, using 2024 data. The goal is to discover trends and actionable insights to help turn casual riders into annual members.

## Project Structure
- `cleaning_divvy.R` — R script for data wrangling, cleaning, and sampling 100,000-row random for Tableau visualization
## Business Questions
- How do monthly and weekly usage patterns differ between casual riders and members?
- What is the distribution of customer types?
- How do ride duration and bike preferences vary by user group?
- When is the best time to target marketing campaigns to convert casual riders into members?

## Key Findings
- **Seasonality:** Both members and casual riders use Divvy most during warmer months (April–September), peaking in September.
- **Rider Type Behavior:** Casual riders are most active on weekends (leisure), while members use Divvy mainly on weekdays (commuting).
- **Ride Duration:** Casual users have longer average ride times; members have shorter, more frequent trips.
- **Bike Preferences:** Both groups prefer eBikes and classic bikes; scooters are much less popular.
- **Customer Distribution:** Most users are annual members.

## Tools Used
- **R (tidyverse, lubridate):** Data cleaning, wrangling, sampling
- **Tableau:** Data visualization and dashboarding


## Data Source
- Sampled and anonymized Divvy bike share data (2024). No private data is included.

## Author
- Zeth Gabuni-Baudon
