# Linear Model:
# Define variables
seiten <- seq(50, 500, 50)
preis <- c(6.4, 9.5, 15.6, 15.1, 17.8, 23.4, 23.4, 22.5, 26.1, 29.1)

# Fit a linear model
model <- lm(preis ~ seiten)

# Print coefficients and interpretation
summary(model)


# Confidence Interval:
# Calculate confidence intervals for a linear model
confint(lm(Verkauf ~ TV), level = 0.95)


# Multiple Linear Regression:
# Fit a multiple linear regression model
model <- lm(Verkauf ~ TV + Radio + Zeitung)

# Print coefficients and summary
summary(model)


# Correlation:
# Calculate correlations between variables
cor(data.frame(TV, Radio, Zeitung, Verkauf))


# Prediction:
# Predict values using a linear model
predict(lm(Verkauf ~ TV + Radio), interval = "confidence", data.frame(TV = 100, Radio = 20))


# Hypothesis Testing (z-test and t-test):
# Conduct z-test
qnorm(p = 0.05, mean = 100, sd = 15)

# Conduct t-test
x <- c(5.9, 3.4, 6.6, 6.3, 4.2, 2, 6, 4.8, 4.2, 2.1, 8.7, 4.4, 5.1, 2.7, 8.5, 5.8, 4.9, 5.3, 5.5, 7.9)
t.test(x, mu = 5)


# Paired and Unpaired t-tests:
# Paired t-test
t.test(nachher, vorher, alternative = "two.sided", mu = 0, paired = TRUE, conf.level = 0.95)

# Unpaired t-test
t.test(x, y, alternative = "two.sided", mu = 0, paired = FALSE, conf.level = 0.95)


# Wilcoxon Test and Mann-Whitney U-Test:
# Wilcoxon Test
x <- c(79.98, 80.04, 80.02, 80.04, 80.03, 80.03, 80.04, 79.97, 80.05, 80.03, 80.02, 80, 80.02)
wilcox.test(x, mu = 80, alternative = "two.sided")

# Mann-Whitney U-Test
x <- c(79.98, 80.04, 80.02, 80.04, 80.03, 80.03, 80.04, 79.97, 80.05, 80.03, 80.02, 80, 80.02)
y <- c(80.02, 79.94, 79.98, 79.97, 80.03, 79.95, 79.97)
wilcox.test(x, y, alternative = "two.sided", mu = 0, paired = FALSE, conf.level = 0.95)

