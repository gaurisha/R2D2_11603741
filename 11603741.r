install.packages("tidyverse")
install.packages("scales")
install.packages("ggplot2")
library(tidyverse)

library(scales)

require(data.table)

df_rating<-as.data.frame(fread("data.tsv"))
#df_rating <- read.table (file='data.tsv', sep = '/t', header = TRUE )
View(df_rating)
df_ratings %>% head()
ggplot(df_ratings, aes(x = numVotes, y = averageRating)) +
  geom_point()
plot
ggsave("imdb-0.png", plot, width = 4, height = 3)