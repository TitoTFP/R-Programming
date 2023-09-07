Land = factor(c("Belgium", "Denmark", "France", 
        "GB", "Ireland", "Italy", "Luxembourg", 
        "Holland", "Portugal", "Spain",
        "USA", "Japan", "Deutschland"
        ))

x = c(2.8, 1.2, 2.1, 1.6, 1.5, 4.6, 
      3.6, 2.1, 6.5, 4.6,
      3.0, 1.3, 4.2)

y = c(9.4, 10.4, 10.8, 10.5, 18.4, 11.1, 2.6, 8.8, 5.0,
      21.5, 6.7, 2.5, 5.6)

mydataframe = data.frame(Land, x, y)
colnames(mydataframe) = list("Land", "increase of the index (x)", "unemployment (y)")
mydataframe

# Number 1
# Maximum
max1 = subset(mydataframe, mydataframe$`unemployment (y)` == max(mydataframe$`unemployment (y)`))
# Minimum
min1 = subset(mydataframe, mydataframe$`unemployment (y)` == min(mydataframe$`unemployment (y)`))

# Number 2
range = NULL
range = max1$`unemployment (y)` - min1$`unemployment (y)`
range

# Number 3
quantile(mydataframe$`unemployment (y)`)

# Number 4
median(mydataframe$`unemployment (y)`)

# Number 5
quarrt_diff = as.vector(quantile(mydataframe$`unemployment (y)`))[4] - as.vector(quantile(mydataframe$`unemployment (y)`))[2]
quarrt_diff

# Number 6
mean(mydataframe$`unemployment (y)`)

# Number 7
mad(mydataframe$`unemployment (y)`)

# Number 8
mydata_var = var(mydataframe$`unemployment (y)`)
mydata_var

# Number 9
sqrt(mydata_var)

# Number 10
boxplot(mydataframe$`unemployment (y)` ~ mydataframe$`increase of the index (x)`, data=mydataframe)

hist(mydataframe$`unemployment (y)`)

kde = density(mydataframe$`unemployment (y)`, kernel="gaussian")
lines(kde, lwd = 3, col = "red")

ecdf = ecdf(mydataframe$`unemployment (y)`)
plot(ecdf, verticals = T, do.points=F, lwd=3, col="blue")

# Number 11
cov(mydataframe$`increase of the index (x)`, mydataframe$`unemployment (y)`)

# Number 12
plot(mydataframe$`unemployment (y)` ~ mydataframe$`increase of the index (x)`, data=mydataframe)

# Number 13
cat("index rank:", rank(mydataframe$`increase of the index (x)`))
cat("unem rank:", rank(mydataframe$`unemployment (y)`))

# Number 14
cor(mydataframe$`increase of the index (x)`, mydataframe$`unemployment (y)`, use = "complete.obs")

# Number 15

