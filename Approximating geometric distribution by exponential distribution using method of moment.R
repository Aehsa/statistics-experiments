p <- 0.5

sample <- rgeom(5, p)
sample_mean<- mean(sample)
lambda <- 1/sample_mean

# Plot geometric distribution using curve()
curve(p * (1 - p) ^ x, from = 0, to = 10, col = "blue", lwd = 2, 
      ylab = "Probability", xlab = "x", main = "Geometric vs. Exponential Approximation")

#Overlay the exponential distribution
curve(dexp (x, lambda), from = 0, to = 10, col = "red", lwd = 2, add = TRUE)

# Add legend
legend("topright", legend = c("Geometric", "Exponential Approx"), 
       col = c("blue", "red"), lwd = 2, lty = c(1, 2))