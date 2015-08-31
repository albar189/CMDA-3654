d=c(1, 2, 3, 4)
e=c("red", "white", "red", NA)
f=c(TRUE, TRUE, TRUE, FALSE)
mydf=data.frame(d,e,f)

attach(mydf) #attach a DF for fewer keystrokes
d
detach(mydf) #don't forget to detach

write.csv(mydf, file="mydf.csv")
write.table(mydf, file="mydf.txt", sep="\t")

require(ggplot2) #load the package and the data
library(ggplot2) #load the package and the data

b=list(3, "Sam", TRUE, 1+0, 1i, c(1,4,7)) #lists can contain objects of different type
a=factor(c("yes", "yes", "no")) #Factors are used to represent categorical data. They are better to be used with labels rather than integers

a=factor(c("yes", "yes", "no"), levels=c("yes", "no")) #makes yes the base level, before no was the base level because n comes before y in the alphabet
table(a)

c=0/0
c
is.nan(c)
c=NA
is.na(c)
is.nan(c)


a=c(1, 2, NA, 4, NA, 5)
is.na(a)
b=a[!is.na(a)] #exclamation is negation
b

airq =data.frame(ozone=c(2,3,4), wind=c(2,NA,5), ozone=c(NA, 5, 3))
airq
good=complete.cases(airq) #for dataframe
good #gppd represents which rows are complete (Without NA)
airq[good,]


#if else statement
x=5
if (x==3){
  y=3
} else if ((x>3) & (x<5)){
  y=4
} else{
  y=5
}
y

#for loop
for (i in 1:10){
  print(i)
}

for (i in seq(from=1, to=10, by=.5)){
  print(i)
}

#while loop
count = 0
while (count<10){
  print(count)
  count = count+1
}

#break > exit the loop
#next  > go to the next iteration
#return > exit a function

addfunc = function(a, b){
  a+b #function returns the last argument
}
addfunc(293, 3)

addfunc = function(a,b){ 
  return (a+b)
  a+b
  a+b+2
}
addfunc(2,3)

addfunc = function(a, b=4){
  a+b
} #b has default value
addfunc(9)

mydata = rnorm(10)
?sd
sd(mydata)
sd(x=mydata)
sd(x=mydata, na.rm=TRUE)
sd(na.rm=TRUE, x=mydata) #in this way the order doesnt matter
