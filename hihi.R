a = factor(c("Asta","Toti","Tito","Ghifari","Saka","Fikri","Ardhi","Abdul"));a
b = c(10,20,15,43,76,41,25,46); b
c = factor(c("m","f","m","f","m","f","m","f"));c
d = c(2,5,8,3,6,1,5,6);d
myframe = data.frame(a,b,c,d)
myframe
colnames(myframe) = c("Name","Age","Sex","Siblings")
myframe[,-3]
