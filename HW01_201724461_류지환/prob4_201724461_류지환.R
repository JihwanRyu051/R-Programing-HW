bayesRule = function(MRX, X, MR){
  MRX*X/MR
}

suspectOne = function(ACM, BCM, CCM){
  mostOne = max(max(ACM,BCM),CCM)
  if(mostOne == ACM)        "Anna"
  else ifelse(mostOne==BCM, "Barry", "Charlie")
}


file = c(rep("A", 50), rep("B",30), rep("C",20))
fileA = c(rep("right", 998), rep("miss", 2))
fileB = c(rep("right", 995), rep("miss", 5))
fileC = c(rep("right", 980), rep("miss", 20))

SfileA = probspace(urnsamples(fileA, size = 1))
SfileB = probspace(urnsamples(fileB, size = 1))
SfileC = probspace(urnsamples(fileC, size = 1))

MRA = Prob(subset(SfileA, out == "miss")) ##P(Miss|Anna)
MRB = Prob(subset(SfileB, out == "miss")) ##P(Miss|Barry)
MRC = Prob(subset(SfileC, out == "miss")) ##P(Miss|Charlie)

SA = probspace(urnsamples(file, size = 1))
SB = probspace(urnsamples(file, size = 1))
SC = probspace(urnsamples(file, size = 1))

A = Prob(subset(SA, out == "A"))
B = Prob(subset(SB, out == "B"))
C = Prob(subset(SC, out == "C"))

MR = MRA*A+MRB*B+MRC*C ##Miss Rate(==P(Miss))

ACM = bayesRule(MRA,A,MR) ##P(Anna|Miss)
BCM = bayesRule(MRB,B,MR) ##P(Barry|Miss)
CCM = bayesRule(MRC,C,MR) ##P(Charlie|Miss)


print(suspectOne(ACM, BCM, CCM))


