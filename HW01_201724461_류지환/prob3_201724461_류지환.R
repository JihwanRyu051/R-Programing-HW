pocket = c(rep("Red",6),rep("Green",4))
P = urnsamples(pocket, size = 3, replace = FALSE, ordered = FALSE)
SP = probspace(P)

allThreeBallsAreRed = subset(SP, X1==X2&X2==X3&X3=="Red")
ABR = Prob(allThreeBallsAreRed)

cat("P(all three balls are red) =", ABR)
