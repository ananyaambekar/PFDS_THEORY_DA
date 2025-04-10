# Load necessary libraries
library(ggplot2)
library(dplyr)

# Print identifying information
cat("Name: Ananya Ambekar\n")
cat("Registration Number: 22BDS0074\n\n")

cat("Question:\n")
cat("Given the in-built R dataset iris, draw the visualizations based on the following questions:\n\n")
cat("1. Create a bar chart displaying the average sepal length for each species.\n")
cat("   Include appropriate labels and a title.\n\n")
cat("2. Generate a scatter plot to show the relationship between sepal width and petal width.\n")
cat("   Color the points by species and include suitable labels and a title.\n\n")

# -----------------------------------
# Subpart 1: Bar chart using geom_bar
# -----------------------------------

# Calculate average sepal length for each species
avg_sepal <- iris %>%
  group_by(Species) %>%
  summarise(Avg_Sepal_Length = mean(Sepal.Length))

# Create the bar chart
print(
  ggplot(avg_sepal, aes(x = Species, y = Avg_Sepal_Length, fill = Species)) +
    geom_bar(stat = "identity", width = 0.6) +  # 'identity' to plot pre-summarised values
    labs(title = "Average Sepal Length by Species",
         x = "Iris Species",
         y = "Average Sepal Length (cm)") +
    theme_minimal() +
    scale_fill_brewer(palette = "Set2")
)

# -----------------------------------
# Subpart 2: Scatter plot using geom_point
# -----------------------------------

# Create the scatter plot
print(
  ggplot(iris, aes(x = Sepal.Width, y = Petal.Width, color = Species)) +
    geom_point(size = 2, alpha = 0.8) +
    labs(title = "Sepal Width vs Petal Width by Species",
         x = "Sepal Width (cm)",
         y = "Petal Width (cm)") +
    theme_light() +
    scale_color_brewer(palette = "Dark2")
)