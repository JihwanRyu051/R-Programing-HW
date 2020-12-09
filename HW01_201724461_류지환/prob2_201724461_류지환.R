roll = rolldie(2, nsides = 6)
A = subset(roll, X1==X2)
B = subset(roll, X1+X2>=6)

SA = probspace(A)
SB = probspace(B)

ACB = Prob(subset(spaceB, X1==X2)) ##P(A|B)
BCA = Prob(subset(spaceA, X1+X2>=6)) ##P(B|A)

cat("P(A|B) =",ACB,"\nP(B|A) =",BCA)
