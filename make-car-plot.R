library(tidyverse)

library(ggthemes)

car_plot <- mtcars %>% select(mpg, wt) %>%
  ggplot(aes(mpg, wt)) + 
  geom_point() +
  geom_smooth(method = "lm", 
              formula = y ~ x, 
              se = FALSE) + 
  theme_clean() + 
  labs(title = "Fuel Efficiency and Weight", 
       subtitle = "Heavier cars are less fuel efficient", 
       x = "MPG", 
       y = "Weight (1000s of lbs)", 
       caption = "Henderson and Vellerman (1981)")

write_rds(car_plot, "car-plot.rds")
