#Data structures in R

#vectors
v3=c(1,5,4,9,0) #create print
typeof(v3)
length(v3)
seq(1,3,by=0.2)
v3=c(1,4,5,9)
v3[3]

#matrix-----
(data=24:1)
v12=c(1,3,'A')
(V13=1:10)
V13+2
V13^2
V13/sum(v13)
v13/ SUM(V13)
(n2=matrix(data,nrow = 4))
(n2=matrix(data,nrow = 4, byrow = T))
?matrix
M2[,1]
n2[,1]
n2[2,]
n2[,c(1,3)]
n2[c(2,4),c(2,4,5)]
n2
rowSums(n2)
colSums(n2)
rowMeans(n2)
colMeans(n2)
n2
table(mtcars$cyl)
t1=table(mtcars$cyl,mtcars$gear, dnn = c('cyl','gear'))
t1
margin.table(t1)
margin.table(t1,margin = 1)
margin.table(t1,margin = 2)
addmargins(t1)
?addmargins
addmargins(t1, FUN = mean)
addmargins(t1, FUN = list(list(mean,sum,sd,var), list(mean,sum,sd,var)))
n2
sweep(n2,MARGIN = 1, STATS = 4, FUN = '*')
sweep(n2,MARGIN = 1, STATS = c(1,2,3,4), FUN = '*')
sweep(n2,MARGIN = 2, STATS = c(1,2,3,4,5,6), FUN = '*')
#dataframe----
data()
AirPassengers
class(mtcars)
head(mtcars,n=3)
tail(mtcars)
dim(mtcars)
nrow(mtcars)
names(mtcars)
rownames(mtcars)
summary(mtcars)

#summarizing / filtering data
mtcars[mtcars$gear==4,]
mtcars[mtcars$gear ==4 & mtcars$mpg<25, c('mpg','gear','cyl')]
mtcars[order(mtcars$mpg),]
mtcars[c(1,3,4),c(1,5)]

#export to csv
mtcars
write.csv(mtcars, 'Prakhar.csv')
df1=read.csv('Prakhar.csv')
head(df1)
names(df1)
length(names(df1))
ncol(df1)
write.csv(mtcars,'Prakhar1.csv',row.names = F)
df2 = read.csv('Prakhar1.csv')
head(df2)
(carnames=paste('car',1:32, sep= ":"))
df2$cars=carnames
head(df2)

#create DF
#rollno, name, gender, marks, grade
(rollno=1:3)
(name=paste('student',1:30))
rep('M',3)
rep(c('M','F'),c(12,18))
set.seed(123)
(gender=sample(c('M','F'),size = 30, replace = T,prob = c(.6,.4)))
table(gender)
prop.table(table(gender))
(marks=runif(30, min=50, max = 100))
x=c(-14.45,-14.67,14.45,14.67)
x
trunc(x)
round(x,1)
floor(x)
ceiling(x)
(grades=sample(c('A','B','C'),size=30,replace=T,prob = c(.3, .4, .2)))
table(grades)
prop.table(table(grades))
rollno : name : gender : marks : grades 
students=data.frame(rollno,name,gender,marks,grades)
head(students)
str(students)
summary(students)
students$names=as.character((students.name))
str(students)
summary(students)
students$grades=factor(students$grades, order=T)
students$grades
students$grades=factor(students$grades, order=T, levels =c('C','B','A'))
students$grades
?factor
barplot(table(students$grades),col=1:3)
hist(students$marks)
range(students$marks)
hist(students$marks, breaks=c(0,50,70,90,100))
f1=students[students$gender=='M'& students$marks>70,]
f1

#
install.packages(dplyr)
