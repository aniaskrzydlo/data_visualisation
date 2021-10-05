# Default line plot
ggplot(data_time_long, aes(x = year, y = value / 1000000)) +
  geom_line(aes(color = category)) +
  labs(title = "Number of CAT and DOG lovers in 2000 - 2020") +
  ylab("'000 000 of respondents")

# Basic line plot with 2 lines
ggplot(data_time_long, aes(x = year, y = value / 1000000)) +
  geom_line(aes(color = category), size = 1.5) +
  scale_colour_manual(name = "Animal", 
                      labels = c(value_dog = "Dog", value_cat = "Cat"),
                      values = c(value_dog = "royalblue4", value_cat = "deeppink4")) +
  labs(title = "Number of CAT and DOG lovers in 2000 - 2020",
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
    legend.key = element_rect(fill = NA)
  )

# Line plot with 2 lines and labels
ggplot(data_time_long, aes(x = year, y = value / 1000000)) +
  geom_line(aes(color = category), size = 1.5) +
  geom_text(aes(label = label, color = category), hjust = 1.2, vjust = 1.2) +
  scale_colour_manual(values = c(value_dog = "royalblue4", value_cat = "deeppink4")) +
  labs(title = "Number of CAT and DOG lovers in 2000 - 2020",
       subtitle = "'000 000 of respondents") +
  theme(
    plot.title = element_text(size = 18, margin = margin(10, 0, 0, 0)),
    plot.subtitle = element_text(size = 12, margin = margin(10, 0, 30, 0), color = "gray"),
    plot.margin = margin(0, 50, 10, 10),
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
