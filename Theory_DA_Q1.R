library(plotly)

# Sample dataset
set.seed(123)
months <- seq.Date(from = as.Date("2023-01-01"), by = "month", length.out = 12)
data <- data.frame(
  Month = rep(months, 3),
  Sales = c(runif(12, 100, 300), runif(12, 200, 400), runif(12, 150, 350)),
  Category = rep(c("Electronics", "Clothing", "Furniture"), each = 12)
)

# Interactive line plot
plot_ly(data, x = ~Month, y = ~Sales, color = ~Category,
        type = 'scatter', mode = 'lines+markers') %>%
  layout(title = "Monthly Sales Trends by Product Category",
         xaxis = list(title = "Month"),
         yaxis = list(title = "Sales in USD"))