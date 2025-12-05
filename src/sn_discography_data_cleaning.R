# Script: sn_discography_data_cleaning.R
# Description: Cleaning data for Stevie Nicks project

library(readr)
library(dplyr)
library(lubridate)
library(tidyr)
library(janitor)

sn_discography <- read.csv("../data/StevieNicksAlbumTracks.csv")

sn_discography_clean <- sn_discography %>%
  mutate(
    duration_seconds = period_to_seconds(ms(Duration)),
    duration_minutes = duration_seconds / 60,
    key = factor(Key),
    musical_mode = factor(Mode),
    album = factor(Album),
    decade = paste0(floor(Year/10)*10, "s")
  ) %>%
  arrange(Year, Album)