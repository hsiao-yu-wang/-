x <- 5
x

#�i��R�y���ϧΥ\��
demo(graphics)

#�����
data(iris)
plot(iris)
View(iris)

x <- c(1,2,3,4,5)
y <- c(5,10,15,20,25)
plot(x,y)
plot(x)

#�x�W�a��
install.packages("ggmap")
library(ggmap)
map.taiwan <- get_map(location="Taiwan", zoom=8)
ggmap(map.taiwan)

#�M�󲾰�
remove.packages("ggmap")

#R�m��
x <- 10
x
y <- x^2
y
z <- sqrt(y)
z

#mode(��ƫ��A)�Plength(����)
x <- 10
x
mode(x)  #numeric�ƭ�
length(x)  #�]���u���@�ӼƦr�A�ҥH�O�@

y <- 10.9
y
mode(y)
length(y)

z <- T
z
mode(z)  #logical�޿�
length(z)

a <- "Hello"
a
mode(a)  #charater��r
length(a)

b <- 4+2i
b
mode(b)  #complex�Ƽ�
length(b)

v <- c(10,5,3.1,6.4,9.2,21.7)
v
mode(v)  #vector�V�q
length(v)

v <- c(10,5,NA,6.4,9.2,21.7)
v
v[2]  #���ޱq1�}�l
v2 <- 1:10
v2

#�x�}Matrix(�G��)
x <- matrix(1:24, nrow = 4, ncol = 6, byrow = TRUE)
x
y <- matrix(1:24, nrow = 4, ncol = 6, byrow = FALSE)
y

#cbind()�Brbind() and t()�x�}��m
x1 <- c(1, 2, 3)
x2 <- c(4, 5, 6)
x3 <- c(7, 8, 9)
xc <- cbind(x1 ,x2, x3)
xr <- rbind(x1, x2, x3)
xc
xr
xt <- t(xc)
xt
nrow(xc)
ncol(xc)
xc[,1]
xc[2,]
eigen(xc)
z <- xc * xr  #�Ʀr�ۭ�
z <- xc %*% xr  #�x�}�ۭ�
z

#Array�}�C(�h��)
x <- 1:24
dim(x) <- c(3, 4, 2)
x
x <- array(1:24, dim = c(3, 4, 2))
x
x[2,3,1]
x[3,1,2]

#Factor(�]�l)(��vector�h�F���O�έp)
sex <- factor(c("�k", "�k", "�k", "�k", "�k"))
sex

#Data Frame��Ʈج[
id <- c(1, 2, 3, 4)
age <- c(25, 30, 35, 40)
sex <- c("Male", "Male", "Female", "Female")
pay <- c(30000, 40000, 45000, 50000)
x_dataframe <- data.frame(id, age, sex, pay)
x_dataframe
x_dataframe[2]  #�ĤG����
x_dataframe$age
x_dataframe[2,]  #�ĤG�����
edit(x_dataframe)  #����
y <- edit(x_dataframe)  #y�s���n����
y

#list
id <- c(1, 2, 3)
sex <- c("male", "male", "female")
pay <- c(30000, 40000, 50000)
y_dataframe <- data.frame(id, sex, pay)
gender <- factor("�k", "�k", "�k")
paul.family <- list(namw = "paul", wife = "iris", no.kids = 3, kids.age = c(25, 28,30), gender, y_dataframe)
paul.family
paul.familykid.age
paul.family[4]
paul.family[4][2]  #����
paul.family[[4]]  #�����W�٥h��
paul.family[[4]][2]


#�ĤG��

#�]�w�u�@�ؿ�
setwd("c:/")
getwd()
x <- read.table("x.csv", sep = ",", header = TRUE)
x
str(x)

x <- read.table("x.csv", sep = ",", header = FALSE)
x
str(x)

x <- read.csv("x.csv", header = TRUE)
x

x <- read.table("x.txt", header = TRUE)
x

#sep�p�P�ɮפ��ūh�|Ū���~(sep�w�]��tab(\t))
x <- read.table("x.csv", sep = " ", header = TRUE)
x

#scanŪ��consol��J��r
x <- scan("")  #��J�ȫ��Enter�A����J��Ʈɫ��⦸Enter
x
str(x)

my <- scan(file = "", what = list(name = "", pay = integer(), sex = ""))
my
str(my)

x <- scan("")
x
str(x)

setwd("c:/R")

#��Ƽg�J
write.table(X, "c:/R/X_File.csv", row.names = FALSE, col.names = FALSE, sep = ",")  #���ઽ����bC�ѤU���A�ݭn����Ƨ�

#���ظ�ƶ�
data()
data("iris")
iris
str(iris)
summary(iris)

save(iris, file = "iris.RDATA")

load("iris.RDATA", .GlobalEnv)


#�ĤT��

a <- c(1, 2, 3)
x <- a+2
x
(x <- a+2)  #�[�A�����ܪ������

{a <- c(1, 2, 3); x <- a+2}  #�X�֡A��P�椧���[�F
x

#if else
x <- 6
if (x > 5) y = 2 else y = 4
y

x <- 3
y <- 1
if (x < 5 && y < 5) {y <- 10; z <- 5}
y
z

#ifelse  �X��
x <- 20
y <- ifelse(x > 5, 2, 3)
y

#switch
x <- 1
switch (x, 5, sum(1:10), rnorm(5))
x <- 2
switch (x, 5, sum(1:10), rnorm(5))
x <- 3
switch (x, 5, sum(1:10), rnorm(5))

y <- 1
switch(y, juice = "Apple", meat = "Pork")

#for
x <- 0
for (i in 1:5) x <- x+i
x

x <- 0
y <- 0
for (i in 1:5) {x <- x+i; y <- i^2}
x
y

#while
sum <- 0
i <- 1
while(i <= 10) {sum <-sum+i; i <- i+1}
sum

#repeat  �n�[break
sum <- 0
i <- 1
repeat{
  sum <- sum + i
  i <- i + 1
  if (i >10) break
}
sum

#apply()
x <- array(1:24, dim = c(4, 6))
x
apply(x, 1, sum)  #1�N���C�ۥ[
apply(x, 2, sum)  #2�N����ۥ[

#�ۭq���
myfun <- function(x) {y <- x + 2; return(y)}
myfun(1)
myfun(2)
myfun() #���~
myfun <- function(x = 1) {y <- x + 2; return(y)}  #�Ѽƹw�]��
myfun()

#factorial����
factorial <- function(x = 1){
  y = 1
  for (i in 1:x) {y <- y * i}
  return(y)
}
factorial(4)


#�ĥ|��

demo(graphics)
demo(image)

y <- sin(1:20)
plot(y, type = "l", xlab = "X", ylab = "Y")
title(main = "Sin Plot", sub = "��4-2")
points(5, 0.5)  #�e�I

#���ʦ�ø��
plot(2, 2)
pts <- locator(n = 3)
pts
par()

