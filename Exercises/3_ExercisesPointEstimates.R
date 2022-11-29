#' @title 3_ExercisesPointEstimates
#' @description Demonstrates use of random sampling to generate a point estimate
#' @author NMCG
#' @bugs None
#' @keywords point estimate, population parameter

# see Chapter 5 - slide 7
pop_size <- 2500000
possible_entries <- c(rep("support", 0.88 * pop_size), rep("not", 0.12 * pop_size))
sampled_entries <- sample(possible_entries, size = 1000)
sum(sampled_entries == "support") / 1000