# BrewKnows

# Requires rvest
# install.packages('rvest')
library(rvest)

beer <- read_html("http://www.ratebeer.com/beer/other-half-double-mosaic-dream/405387/")
rating <- beer %>% html_node('br+ span[itemprop="ratingValue"]') %>% html_text() %>% as.numeric()

title <- beer %>% html_node('.user-header span') %>% html_text()
brand <- beer %>% html_node('#_brand4 span') %>% html_text()
style <- beer %>% html_nodes('Style\:') %>% html_text()
ratings_number <- beer %>% html_nodes('#_ratingCount8') %>% html_text() %>% as.numeric()
ratings_wgt_avg <- beer %>% html_nodes('strong span:nth-child(1)') %>% html_text() %>% as.numeric()
calories <- beer %>% html_nodes('small big:nth-child(6)') %>% html_text() %>% as.numeric()

glasses <- beer %>% html_nodes('#modal+ a') %>% html_text()




similar_beers <- beer %>% html_nodes('.rightnav div a') %>% html_text()





# work in progress
# remove '/5.0'
ratings_mean <- beer %>% html_nodes('big+ a strong') %>% html_text() %>% as.numeric()
# remove '%'
abv <- beer %>% html_nodes('abbr+ big strong') %>% html_text() %>% as.numeric()

# Not Working
style_rating <- beer %>% html_nodes('tr td :bold') %>% html_text() %>% as.numeric()
similar_beers_raw <- beer %>% html_nodes('.rightnav div a') %>% html_text()

