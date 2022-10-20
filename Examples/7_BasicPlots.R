#' @title 7_BasicPlots.R
#' @description Demonstrates strip, histogram, boxplot, scatterplot
#' @author NMCG
#' @bugs None
#' @keywords strip, histogram, boxplot, scatterplot

# query/list available data #################################################

data()

# examine data ##############################################################

chickwts

# access individual columns by name
chickwts$feed

# shown variable names
names(chickwts)

# show structure of the data
str(chickwts)

# show first or last N rows of data
head(chickwts, n = 10)
tail(chickwts, n = 12)

# show basic statistical summary (median, Q1,2,3 etc)
summary(chickwts)


# stripchart #################################################################

# title and plotting character set
stripchart(chickwts$weight, 
           main = "Strip Chart of Chick Weights",
           pch = 21)

# histogram #################################################################

# title and xy labels and color
hist(chickwts$weight, main = "Frequency of Chick Weights",
     xlab = "Chick Weight (grams)",
     ylab = "Weight Range Frequency",
     col = "orange")

# boxplot ###################################################################

boxplot(chickwts$weight)

# box-plot (multiple categories using ~) ####################################

boxplot(chickwts$weight~chickwts$feed, 
        main = "Chick Weights in Grams",
        col = rgb(0.75, 0.5, 0.75))

# pie chart #################################################################

sunshinePerDay <- c(6, 12, 17, 13)
cities <- c("dublin", "paris", "narvik", "caracas")

# uncomment the parameters (i.e. edges, main, border) to see what each parameter does
pie(x = sunshinePerDay, 
    labels = cities, 
    edges = 32,
    main = "Hours Sunshine on 21st June 2022", 
    border = FALSE,
    col = c("red","blue","green","orange"))







