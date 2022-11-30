#' @title 2_ExercisesZScores
#' @description Demonstrates calculation of Z-score using pnorm
#' @author NMCG
#' @bugs None
#' @keywords z-score, normal distribution, pnorm

# Construct/enter normally distributed data
movie_ratings <- c(1,2,3,4,5,6,7,8,9,10)
summary(movie_ratings)

# Generate mean, median, mode, and standard deviation
movie_mean <- mean(movie_ratings)
movie_mean

movie_sd <- sd(movie_ratings)
movie_sd

# Carry out normality tests
hist(movie_ratings)
qqnorm(movie_ratings, pch = 2, frame = FALSE, datax = TRUE)
qqline(movie_ratings, col = "darkorchid", lwd = 1, datax = TRUE)

#Z <-  1
#find ideal value at z = 1 or +1 SD from median
#Z <-  (value - mean)/SD
# value <-  Z * SD + mean
ideal_value <- 1 * 3.02765 + 5.5
ideal_value


# Q1 (25th percentile) = 3.25
# Q2 (50th percentile) = 5.5
# Q3 (75th percentile) = 7.75



# What is the probability of finding person with...?

# What is the range for 68% of respondents centred around the median?

# What value of X is necessary to be in the top 95% of the population?
