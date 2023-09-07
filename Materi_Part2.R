a = c(10 ,20 ,15 ,43 ,76 ,41 ,25 ,46)
b = factor(c("m","f","m","f","m","f","m","f"))
c = c(2 ,5 ,8 ,3 ,6 ,1 ,5 ,6)

myframe = data.frame(a, b, c)
colnames(myframe) = list("Age", "Sex", "Siblings")
myframe

myframe["Age"] # Data Frame
myframe$Age # Numeric

attach(myframe)
detach(myframe)

subset(myframe, myframe$Age > 30)
subset(myframe$Age, myframe$Sex == "m")
myframe[myframe$Sex == "m" & myframe$Age > 30,]

myframe = cbind(myframe, "Income (USD)" = c(1700 ,2100 ,2300 ,2050 ,2800 ,1450 ,3400 ,2000))
names(myframe)[names(myframe) == "Income (USD)"] = "IncomeUSD"
myframe = cbind(myframe, "IncomeEUR" = c(1, 2,3,4,5,6,7,8))

names(myframe) = gsub("In", "Out", names(myframe))
names(myframe)

x = c(2 ,3 ,5 ,2 ,5 ,6 ,7 ,3)
sort(x)
order(x)
rank(x)

order(myframe$Age)

myframe[sort(myframe$Sex, partial = myframe$Age),]

myframe$OutcomeEUR = NULL

myframe[,-4]

edited.myframe = edit(myframe)
fix(myframe)

library("datasets")
data()
data("pressure")
head(pressure)
tail(pressure)

objects(package:datasets)
help(Orange)
data(Orange)
head(Orange)

write.table(Orange, "orange1.txt")
write.table(Orange, "orange2.txt", col.names = F, row.names = F)
write.table(Orange, "orange3.txt", sep = "\t")
write.csv2(Orange, "orange4.csv")

data = read.table("orange1.txt", header = T)
head(data)
names(data)
str(data)

names(data) = list("Pohon", "Umur", "Jari - jari Pohon")
head(data)

data2 = read.csv2("orange4.csv")
head(data2)
names(data2) = c(NULL, "Pohon", "Umur", "Jari - jari Pohon")

#----------SAMPLING IN R----------#
populasi = c(1:10)
sample(10)
sample(10, replace = T)
sample(populasi)
sample(populasi, 3) #ngambil 3 sampel dari x
sample(populasi, 3, replace = T)
