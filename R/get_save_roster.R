# get_save_roster.R
# Script to update and save PLAY roster data

library(googlesheets)
library(tidyverse)

roster_title = "PLAY Project Roster"
out_fn = "csv/roster.csv"

play_roster <- googlesheets::gs_title(roster_title)
play_data <- googlesheets::gs_read(play_roster)
play_data <- play_data %>%
  select(Last, First, Institution, City, State, Expertise, 
         Collection_role, Coding_role)
message(paste0("Writing roster data to ", out_fn))
readr::write_csv(play_data, path = out_fn)
