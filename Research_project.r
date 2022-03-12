civil_wardc <- read_html("https://civilwardc.org/texts/petitions/")
deed <-  civil_wardc %>% 
  html_nodes(".halfleft li a") %>% 
  html_text()
url <- civil_wardc %>% 
  html_nodes(".halfleft li a") %>% 
  html_attr("href")
url  

raw_text <- civil_wardc %>% 
  html_nodes("p") %>% 
  html_text()
raw_text

civiwardc <- data.frame(deed, url, raw_text)
write.csv(civilwardc, "civilwardc.csv") 