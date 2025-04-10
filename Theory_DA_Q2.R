# This script was created by Ananya Ambekar
# Registration Number: 22BDS0074
# Purpose: Answering a two-part question using Plotly in R to visualize data from the iris dataset

# Load the libraries I need (plotly for interactive plots, dplyr for data wrangling)
library(plotly)
library(dplyr)

cat("Name: Ananya Ambekar\n")
cat("Registration Number: 22BDS0074 \n\n")

cat("Question:\n")
cat("Given the in-built R dataset iris, draw the visualizations based on the following questions:\n\n")
cat("1. Create a bar chart displaying the average sepal length for each species.\n")
cat("   Include appropriate labels and a title.\n\n")
cat("2. Generate a scatter plot to show the relationship between sepal width and petal width.\n")
cat("   Color the points by species and include suitable labels and a title.\n\n")

# -------------------------------
# Subpart 1: Bar Chart for Avg Sepal Length per Species
# -------------------------------

cat("\n\nSubpart 1: Bar Chart - Average Sepal Length by Species\n")

# First, let's calculate the average sepal length for each species
avg_sepal_length <- iris %>%
  group_by(Species) %>%
  summarise(Average_Sepal_Length = mean(Sepal.Length))

# Now let's create the bar chart – this shows us how sepal length varies across the species
plot_ly(data = avg_sepal_length, 
        x = ~Species, 
        y = ~Average_Sepal_Length, 
        type = 'bar',
        marker = list(color = c('#1f77b4', '#2ca02c', '#ff7f0e'))) %>%
  layout(title = "Average Sepal Length by Iris Species",
         xaxis = list(title = "Species"),
         yaxis = list(title = "Average Sepal Length (cm)"))

# -------------------------------
# Subpart 2: Scatter Plot for Sepal Width vs Petal Width
# -------------------------------

cat("\n\nSubpart 2: Scatter Plot - Sepal Width vs Petal Width\n")

# Here we’re comparing sepal width and petal width to see how the two features relate
# Coloring by species helps to see how each type of iris behaves in this space
plot_ly(data = iris, 
        x = ~Sepal.Width, 
        y = ~Petal.Width, 
        type = 'scatter', 
        mode = 'markers',
        color = ~Species,
        colors = c('#636EFA', '#00CC96', '#EF553B')) %>%
  layout(title = "Sepal Width vs Petal Width by Species",
         xaxis = list(title = "Sepal Width (cm)"),
         yaxis = list(title = "Petal Width (cm)"))