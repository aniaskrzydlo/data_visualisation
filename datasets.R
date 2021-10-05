library(dplyr)
library(ggplot2)
library(magrittr)
library(tidyr)
library(stringr)


set.seed(50960)
sample_size <- 100

two_category_data <- data_frame(
  category = letters[1:2],
  value = c(10, 7)
) 

data_categories <- data_frame(
  id = 1:sample_size,
  animal = sample(
    c('Dog', 'Cat', 'Bird', 'Turtle', 'Fish', 'Snake', 'Lizzard', 'Chamster', 'Rabbit'), 
    prob = c(0.35, 0.33, 0.11, 0.1, 0.09, 0.05, 0.05, 0.05, 0.05),
    size = sample_size, 
    replace = TRUE)
)

long_names_dict <- c(
  "Dog" = "I am a DOG lover",
  "Cat" = "CAT, of course!",
  "Bird" = "Only BIRD can fly",
  "Turtle" = "I just have a TURTLE",
  "Fish" = "A FISH, I guess",
  "Snake" = "sssSNAKE",
  "Lizzard" = "Definitely LIZZARD",
  "Chamster" = "CHAMSER is the best",
  "Rabbit" = "Cute RABBIT"
)

data_categories_summarised <- data_categories %>%
  group_by(animal) %>%
  summarise(value = n() / sample_size) %>%
  mutate(animal_long = long_names_dict[animal])


data_time_long <- data_frame(
  year = 2000:2020,
  value_dog = c(101809, 209109, 290782, 349201, 523801, 
                890462, 980924, 1383756, 2752385, 3203816,
                4885342, 5462411, 5554893, 6410382, 6533497,
                7186847, 7186890, 7268162, 7521795, 7673974,
                9543564),
  value_cat = c(5001809, 5009109, 5190782, 5249201, 5323801, 
                5890462, 5980924, 5383756, 5752385, 5203816,
                4885342, 4462411, 4554893, 4410382, 4533497,
                4186847, 4186890, 3968162, 3921795, 3873974,
                3843564)) %>%
  pivot_longer(-year, names_to = "category") %>%
  mutate(label = case_when(
    year == 2020 & category == "value_dog" ~ "Dog lovers",
    year == 2020 & category == "value_cat" ~ "Cat lovers",
    TRUE ~ ""
  ))

data_time_random_intervals <- data_frame(
  year = c(1800, 1900, 2000, 2005, 2010, 2015, 2020),
  value = c(1001809, 2890462, 7186890, 7268162, 7521795, 7673974, 7943564))


data_multiple_time_series <- data_frame(
    year = 2010:2020,
    our_brand = c(0, 0, 2, 5, 12, 26, 33, 56, 67, 69, 71),
    competitor_1 = c(89, 90, 90, 86, 81, 75, 77, 78, 76, 77, 77),
    competitor_2 = c(10, 12, 15, 13, 20, 26, 27, 30, 29, 28, 31),
    competitor_3 = c(50, 45, 39, 30, 22, 20, 17, 13, 8, 0, 0),
    competitor_4 = c(35, 38, 45, 50, 49, 56, 51, 47, 39, 42, 40),
    competitor_5 = c(0, 0, 0, 0, 0, 2, 3, 5, 7, 15, 34)) %>%
  pivot_longer(-year, names_to = "category") %>%
  mutate(label = case_when(
    category == "our_brand" ~ "Our brand",
    TRUE ~ paste("Competitor", str_sub(category, -1, -1))
  ))



