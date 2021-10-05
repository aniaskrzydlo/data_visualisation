# Default settings for bar chart
ggplot(data_categories, aes(x = animal)) + 
  geom_bar(aes(y = (..count..) / sum(..count..)), fill = 'royalblue4') +
  scale_y_continuous(labels = scales::percent_format(accuracy = 1)) +
  labs(title = element_text("What is your favourite animal?")) +
  ylab("Percent of respondents")

# Bar chart with proper labels
ggplot(data_categories_summarised, aes(x = animal, y = value)) + 
  geom_col(fill = 'royalblue4') +
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
    axis.text.x = element_text(size = 10, margin = margin(5, 0, 0, 0)),
    axis.text.y = element_blank()
  )
