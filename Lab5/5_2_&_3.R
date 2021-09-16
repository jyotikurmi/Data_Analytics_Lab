
#Define a normalized vector P.
P <- rnorm(10)
# Define a normalized vector Q.
Q <- rnorm(10)

# combine P and Q as matrix object
x <- rbind(P,Q)
library(philentropy)

# compute the Euclidean Distance with default parameters
distance(x, method = "euclidean")
stats::dist(x, method = "euclidean")

# compute the Manhattan  Distance with default parameters
distance(x, method = "manhattan")
stats::dist(x, method = "manhattan")
# cosine similarity 
library(lsa)

cosine(x);
