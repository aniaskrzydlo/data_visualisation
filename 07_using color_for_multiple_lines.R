# Multiple line plots with many colors
ggplot(data_multiple_time_series, aes(x = year, y = value)) +
  geom_line(aes(color = label)) +
  scale_x_continuous(breaks = c(2010, 2012, 2014, 2016, 2018, 2020)) +
  labs(title = "Our brand vs competitors",
       subtitle = "'000 USD net sales") +
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

# Line plot using colors
ggplot(data_multiple_time_series, aes(x = year, y = value)) +
  geom_line(aes(color = category, size = category)) +
  scale_colour_manual(values = c(our_brand = "royalblue4", 
                                 competitor_1 = "gray85",
                                 competitor_2 = "gray85",
                                 competitor_3 = "gray85",
                                 competitor_4 = "gray85",
                                 competitor_5 = "gray85")) +
  scale_size_manual(values = c(our_brand = 1.5, 
                                 competitor_1 = 0.5,
                                 competitor_2 = 0.5,
                                 competitor_3 = 0.5,
                                 competitor_4 = 0.5,
                                 competitor_5 = 0.5)) +
  scale_x_continuous(breaks = c(2010, 2012, 2014, 2016, 2018, 2020), expand = c(0, 0)) +
  scale_y_continuous(limits = c(0, 100), expand = c(0, 0)) +
  labs(title = "Our brand vs competitors",
       subtitle = "'000 USD net sales") +
  theme(
    plot.title = element_text(size = 18, margin = margin(10, 0, 0, 0)),
    plot.subtitle = element_text(size = 12, margin = margin(10, 0, 30, 0), color = "royalblue4"),
    plot.margin = margin(0, 20, 10, 10),
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
