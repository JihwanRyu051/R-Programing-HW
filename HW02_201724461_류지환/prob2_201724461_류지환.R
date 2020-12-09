#2
total = 5*(18-9)
lower = qpois(30/total, lambda = 5)
upper = qpois(40/total, lambda = 5)

prob = ppois(upper, lambda = 5) - ppois(lower, lambda=5) + dpois(lower, lambda = 5)
cat("Probability that there are between 30 and 40 customers, inclusively:",prob)