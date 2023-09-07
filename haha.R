z2 = rnorm (100 , mean =10 , sd=2)
hist(z2 , probability =T, col="yellow")
kde2 = density (z2 , kernel ="gaussian")
lines(kde2, lwd=3, col="red")
