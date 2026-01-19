print("Roll No: 23BAD072")

library(ggplot2)
library(dplyr)
library(tidyr)

student_data <- read.csv("D:/Downloads/1.student_performance.csv")

str(student_data)
summary(student_data)

student_data <- student_data %>%
  mutate(Avg_Internal = rowMeans(
    select(., Internal_Test1, Internal_Test2),
    na.rm = TRUE
  ))

subject_avg <- student_data %>%
  group_by(Subject) %>%
  summarise(
    Mean_Marks = mean(Avg_Internal, na.rm = TRUE),
    .groups = "drop"
  )

ggplot(subject_avg, aes(Subject, Mean_Marks, fill = Subject)) +
  geom_col() +
  theme_minimal() +
  labs(
    title = "Subject-wise Average Internal Marks",
    x = "Subject",
    y = "Average Marks"
  ) +
  theme(legend.position = "none")

trend_data <- student_data %>%
  group_by(Subject) %>%
  summarise(
    Internal_Test_1 = mean(Internal_Test1, na.rm = TRUE),
    Internal_Test_2 = mean(Internal_Test2, na.rm = TRUE),
    .groups = "drop"
  ) %>%
  pivot_longer(
    cols = starts_with("Internal_Test"),
    names_to = "Test",
    values_to = "Marks"
  )

ggplot(trend_data, aes(Test, Marks, group = Subject, color = Subject)) +
  geom_line(linewidth = 1) +
  geom_point(size = 3) +
  theme_minimal() +
  labs(
    title = "Performance Trend Across Internal Tests",
    x = "Test",
    y = "Average Marks"
  )

grade_counts <- student_data %>%
  count(Final_Grade) %>%
  mutate(
    Percentage = n / sum(n) * 100,
    ypos = cumsum(Percentage) - 0.5 * Percentage
  )

ggplot(grade_counts, aes("", Percentage, fill = Final_Grade)) +
  geom_bar(stat = "identity", width = 1, color = "white") +
  coord_polar("y") +
  theme_void() +
  labs(title = "Final Grade Distribution") +
  geom_text(
    aes(y = ypos, label = paste0(round(Percentage, 1), "%")),
    color = "white",
    size = 5
  )
