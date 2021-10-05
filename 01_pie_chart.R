# More category pie chart
ggplot(data_categories_summarised, aes(x = "", y = value, fill = animal)) +
  geom_bar(stat = "identity", width = 1, color = "white") +
  coord_polar("y", start = 0) +
  labs(title = element_text("What is your favourite animal?")) +
  theme_void() + # remove background, grid, numeric labels 
  theme(
    plot.title = element_text(size = 18, margin = margin(10, 0, 0, 0)),
    legend.title = element_blank()
  )

# Bar chart
ggplot(data_categories_summarised, aes(x = animal, y = value)) + 
  geom_col(fill = 'royalblue4') +
  scale_y_continuous(labels = scales::percent_format(accuracy = 1), expand = c(0, 0), limits = c(0, max(data_categories_summarised$value) + 0.01)) +
  labs(title = element_text("What is your favourite animal?")) +
  ylab("Percent of respondents") +
  theme(
    plot.title = element_text(size = 18, margin = margin(10, 0, 30, 0)),
    panel.background = element_rect(fill = NA),
    panel.grid.major.x = element_blank(),
    panel.grid.major.y = element_line(colour = "gray", size = 0.15),
    axis.ticks = element_blank(),
    axis.title.x = element_blank(),
    axis.title.y = element_text(color = "gray", margin = margin(0, 10, 0, 0)),
    axis.text.x = element_text(size = 10, margin = margin(5, 0, 0, 0)),
    axis.text.y = element_text(color = "gray")
  )

# Two category pie chart
ggplot(data_categories_summarised[1:2, ], aes(x = "", y = value, fill = animal)) +
  geom_bar(stat = "identity", width = 1, color="white") +
  coord_polar("y", start = 0) +
  labs(title = element_text("What is your favourite animal?")) +
  theme_void() + # remove background, grid, numeric labels
  theme(
    plot.title = element_text(size = 18, margin = margin(10, 0, 0, 0)),
    legend.title = element_blank()
  )

