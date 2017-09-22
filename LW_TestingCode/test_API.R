library(tidyverse)
library(httr)
library(jsonlite)

data <- GET("https://api.wotblitz.com/wotb/account/achievements/?application_id=20af3412bed60d56f61717e83ba1ccbc&account_id=1009660686")
text <- content(data, as = "text", encoding = "UTF-8") %>% fromJSON
