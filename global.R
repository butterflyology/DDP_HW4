library("Lahman")
library("tidyverse")

Teams <- as.tibble(Teams)

myteams <- Teams %>% 
  filter(yearID == 2016) %>% 
  select(teamID, yearID, lgID, G, W, L, R, RA) %>% 
  mutate(RD = R - RA, Wpct = W / (W + L))
