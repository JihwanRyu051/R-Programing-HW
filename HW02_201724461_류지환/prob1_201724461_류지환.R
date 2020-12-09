library(distr)
n = seq(0, 50)
lamb = 0.805*30
dPoisson = data.frame(N = n,
                      Density = dpois(n, lambda = lamb),
                      Distribution=ppois(n, lambda = lamb))
#1.a binomial distribution
#1.b
plot(dPoisson$Density,
        main = "Poisson Density, dpois(M, lambda = 0.805*30)",
        xlab = "X",
        ylab = "Density",
        type = "l",
        col = "red")
#1.c
plot(dPoisson$Distribution,
     main = "Poisson Distribution, ppois(N, lambda = 0.805*)",
     xlab = "X",
     ylab = "Distribution",
     type = "l",
     col = "red")
#1.d
dpois(25, lambda = lamb)
#1.e
ppois(16, lambda = lamb)
#1.f
ppois(50,lambda = lamb) - ppois(9, lambda = lamb)
#1.g
ppois(50,lambda = lamb) - ppois(20, lambda = lamb)+dpois(20, lambda = lamb)
#1.h
ppois(18, lambda = lamb) - ppois(10, lambda = lamb) + dpois(10, lambda = lamb)
#1.i
ex = Binom(size = 30, prob = 0.805)
cat("E(X) =", E(ex))
#1.j
cat("var(X) =", var(ex))
#1.k
cat("sd(x) =", sd(ex))
#1.l
cat("E(9X+68) =", E(9*ex+63.98))
