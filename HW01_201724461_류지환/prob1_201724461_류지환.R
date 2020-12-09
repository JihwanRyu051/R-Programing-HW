birthDuplicated = function(k){
  x = 1
  if(k>1)
    for(i in 0:k-1)
      x = x*(365-i)/365 ## P(k'), permutations(365, k)/365^k
    
  1 - x               ## 1 - P(k')
}

PB = birthDuplicated(50)

birthData = c(rep(0, 51))

for(i in 1:length(birthData)){
  birthData[i] = birthDuplicated(i-1)
}

plot(1:length(birthData)~birthData,
     xlab = "Probability that at least 2 individuals 
     will have the same birthday in a room of K people(P(K))",
     ylab = "The number of people in a room(K)",
     main = "K vs P(K) ",
     pch = 20,
     cex = 1,
     col = "orange")

cat("P(K=50) =", PB)




