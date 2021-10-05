# Bar chart with long category names
ggplot(data_categories_summarised, aes(x = reorder(animal_long, -value), y = value)) + 
  geom_col(fill = "royalblue4") +
  geom_text(aes(label = scales::percent(value, accuracy = 1)), vjust = 1.5, color = "white", size = 3.8) +
  scale_y_continuous(expand = c(0, 0)) +
  labs(title = "What is your favourite animal?",
       subtitle = "Percent of respondents") +
  theme(
    plot.title = element_text(size = 18, margin = margin(10, 0, 0, 0)),
    plot.subtitle = element_text(size = 12, margin = margin(10, 0, 30, 0), color = "gray"),
    panel.background = element_rect(fill = NA),
    panel.grid.major = element_blank(),
    axis.ticks = element_blank(),
    axis.title = element_blank(),
    axis.text.x = element_text(size = 10, margin = margin(5, 0, 0, 0), angle = 90, hjust = 1),
    axis.text.y = element_blank()
  )

# Horizontal bar chart with long category names
ggplot(data_categories_summarised, aes(x = reorder(animal_long, value), y = value)) + 
  geom_col(fill = 'royalblue4', width = 0.7) +
  geom_text(aes(label = scales::percent(value, accuracy = 1)), vjust = 0.5, hjust = 1.2, color = "white", size = 4) +
  scale_y_continuous(expand = c(0, 0)) +
  coord_flip() +
  labs(title = "What is your favourite animal?",
       subtitle = "Percent of respondents") +
  theme(
    plot.title = element_text(size = 18, margin = margin(10, 0, 0, 0)),
    plot.subtitle = element_text(size = 12, margin = margin(10, 0, 10, 0), color = "gray"),
    panel.background = element_rect(fill = NA),
    panel.grid.major = element_blank(),
    axis.ticks = element_blank(),
    axis.title = element_blank(),
    axis.text.x = element_blank(),
    axis.text.y = element_text(size = 11, margin = margin(0, 5, 0, 0)),
  )
