library(tidyverse)
load("rda/murders.rda")

murders %>% mutate(abb = reorder(abb, rate)) %>%
  ggplot(aes(abb, rate)) +
  geom_bar(width = .5, stat = "identity", color = "black") +
  coord_flip() + theme(text = element_text(size = 9))

ggsave("figs/barplot.png")
