#SECTION 1
library(readr)
library(dplyr)
data <- read_csv("C:/Users/mboat/OneDrive - Georgia Institute of Technology/Desktop/JULIA/HW3BondS24.csv")

model <- lm(y ~ x, data = data)

new_data <- data.frame(x = 20)
point_estimate <- predict(model, new_data)

conf_interval <- predict(model, new_data, interval = "confidence", level = 0.95)

cat("Point estimate of shear strength when the age of the propellant is 20 weeks:", point_estimate, "\n")
cat("95% confidence interval for the mean shear strength:", conf_interval[1], "-", conf_interval[2], "\n")

#SECTION 2
# Load the data and fit a linear regression model
library(readr)
library(dplyr)

data <- read_csv("C:/Users/mboat/OneDrive - Georgia Institute of Technology/Desktop/JULIA/HW3BondS24.csv")

model <- lm(y ~ x, data = data)

# Point prediction and 95% prediction interval for x = 20
new_data <- data.frame(x = 20)
prediction <- predict(model, new_data, interval = "prediction", level = 0.95)

# 95% confidence interval for the mean response when x = 20
conf_interval <- predict(model, new_data, interval = "confidence", level = 0.95)

cat("Point prediction of shear strength when the age of the propellant is 20 weeks:", prediction[1], "\n")
cat("95% prediction interval for the shear strength:", prediction[2], "-", prediction[3], "\n")
cat("95% confidence interval for the mean shear strength:", conf_interval[2], "-", conf_interval[3], "\n")

half_length_pred_interval <- (prediction[3] - prediction[2]) / 2
half_length_conf_interval <- (conf_interval[3] - conf_interval[2]) / 2

cat("Half-length of the prediction interval:", half_length_pred_interval, "\n")
cat("Half-length of the confidence interval:", half_length_conf_interval, "\n")

if (half_length_pred_interval > half_length_conf_interval) {
  cat("The prediction interval is wider than the confidence interval for the mean response.\n")
} else {
  cat("The prediction interval is not wider than the confidence interval for the mean response.\n")
}

#SECTION 3

library(readr)
library(dplyr)

data <- read_csv("C:/Users/mboat/OneDrive - Georgia Institute of Technology/Desktop/JULIA/HW3BondS24.csv")

model <- lm(y ~ x, data = data)

new_data_13 <- data.frame(x = 13)
conf_interval_13 <- predict(model, new_data_13, interval = "confidence", level = 0.95)
new_data_20 <- data.frame(x = 20)
conf_interval_20 <- predict(model, new_data_20, interval = "confidence", level = 0.95)

cat("Point estimate of shear strength when the age of the propellant is 13 weeks:", conf_interval_13[1], "\n")
cat("95% confidence interval for the mean shear strength (13 weeks):", conf_interval_13[2], "-", conf_interval_13[3], "\n")

half_length_conf_interval_13 <- (conf_interval_13[3] - conf_interval_13[2]) / 2
half_length_conf_interval_20 <- (conf_interval_20[3] - conf_interval_20[2]) / 2

cat("Half-length of the confidence interval for 13 weeks:", half_length_conf_interval_13, "\n")
cat("Half-length of the confidence interval for 20 weeks:", half_length_conf_interval_20, "\n")

if (half_length_conf_interval_13 == half_length_conf_interval_20) {
  cat("The half-length of the confidence interval for 13 weeks is identical to that for 20 weeks.\n")
} else {
  cat("The half-length of the confidence interval for 13 weeks is not identical to that for 20 weeks.\n")
  cat("The difference in the half-lengths is:", abs(half_length_conf_interval_13 - half_length_conf_interval_20), "\n")
}

#SECTION 4
library(readr)
data <- read_csv("C:/Users/mboat/OneDrive - Georgia Institute of Technology/Desktop/JULIA/HW3BondS24.csv")

model <- lm(y ~ x, data = data)
summary_model <- summary(model)

r_squared <- summary_model$r.squared
cat("R-squared value:", r_squared, "\n")

percentage_explained <- r_squared * 100
cat("Percentage of the total variability in shear strength of the bond explained by the regression model:", percentage_explained, "%\n")
