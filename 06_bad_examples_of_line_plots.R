# Line graph for categorical data - BAD EXAMPLE
ggplot(data_categories_summarised, aes(x = reorder(animal, -value), y = value, group = 1)) +
  geom_line(size = 1.5, color = "royalblue4") +
  scale_y_continuous(labels = scales::percent_format(accuracy = 1)) +
  labs(title = "What is your favourite animal?",
       subtitle = "Percent of respondents") +
  theme(
    plot.title = element_text(size = 18, margin = margin(10, 0, 0, 0)),
    plot.subtitle = element_text(size = 12, margin = margin(10, 0, 30, 0), color = "gray"),
    panel.background = element_rect(fill = NA),
    panel.grid.major = element_blank(),
    axis.line = element_line(color = "gray35"),
    axis.ticks = element_blank(),
    axis.title = element_blank(),
    axis.text = element_text(size = 10, color = "gray35"),
    axis.text.x = element_text(margin = margin(5, 0, 0, 0)),
    axis.text.y = element_text(margin = margin(0, 5, 0, 0)),
    legend.position = "none"
  )


# Line graph with not consitent intervals - BAD EXAMPLE
ggplot(data_time_random_intervals, aes(x = as.character(year), y = value / 1000000, group = 1)) +
  geom_line(size = 1.5, color = "royalblue4") +
  labs(title = "Number of dog lovers in 1900 - 2020",
       subtitle = "'000 000 of respondents") +
  theme(
    plot.title = element_text(size = 18, margin = margin(10, 0, 0, 0)),
    plot.subtitle = element_text(size = 12, margin = margin(10, 0, 30, 0), color = "gray"),
    panel.background = element_rect(fill = NA),
    panel.grid.major = element_blank(),
    axis.line = element_line(color = "gray35"),
    axis.ticks = element_blank(),
    axis.title = element_blank(),
    axis.text = element_text(size = 10, color = "gray35"),
    axis.text.x = element_text(margin = margin(5, 0, 0, 0)),
    axis.text.y = element_text(margin = margin(0, 5, 0, 0)),
    legend.position = "none"
  )

# "Corrected" time intervals
ggplot(data_time_random_intervals, aes(x = year, y = value / 1000000, group = 1)) +
  geom_line(size = 1.5, color = "royalblue4") +
  labs(title = "Number of dog lovers in 1900 - 2020",
       subtitle = "'000 000 of respondents") +
  theme(
    plot.title = element_text(size = 18, margin = margin(10, 0, 0, 0)),
    plot.subtitle = element_text(size = 12, margin = margin(10, 0, 30, 0), color = "gray"),
    panel.background = element_rect(fill = NA),
    panel.grid.major = element_blank(),
    axis.line = element_line(color = "gray35"),
    axis.ticks = element_blank(),
    axis.title = element_blank(),
    axis.text = element_text(size = 10, color = "gray35"),
    axis.text.x = element_text(margin = margin(5, 0, 0, 0)),
    axis.text.y = element_text(margin = margin(0, 5, 0, 0)),
    legend.position = "none"
  )
