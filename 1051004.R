x <- 5
x

#展示R語言圖形功能
demo(graphics)

#鳶尾花
data(iris)
plot(iris)
View(iris)

x <- c(1,2,3,4,5)
y <- c(5,10,15,20,25)
plot(x,y)
plot(x)

#台灣地圖
install.packages("ggmap")
library(ggmap)
map.taiwan <- get_map(location="Taiwan", zoom=8)
ggmap(map.taiwan)

#套件移除
remove.packages("ggmap")

#R練習
x <- 10
x
y <- x^2
y
z <- sqrt(y)
z

#mode(資料型態)與length(長度)
x <- 10
x
mode(x)  #numeric數值
length(x)  #因為只有一個數字，所以是一

y <- 10.9
y
mode(y)
length(y)

z <- T
z
mode(z)  #logical邏輯
length(z)

a <- "Hello"
a
mode(a)  #charater文字
length(a)

b <- 4+2i
b
mode(b)  #complex複數
length(b)

v <- c(10,5,3.1,6.4,9.2,21.7)
v
mode(v)  #vector向量
length(v)

v <- c(10,5,NA,6.4,9.2,21.7)
v
v[2]  #索引從1開始
v2 <- 1:10
v2

#矩陣Matrix(二維)
x <- matrix(1:24, nrow = 4, ncol = 6, byrow = TRUE)
x
y <- matrix(1:24, nrow = 4, ncol = 6, byrow = FALSE)
y

#cbind()、rbind() and t()矩陣轉置
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
z <- xc * xr  #數字相乘
z <- xc %*% xr  #矩陣相乘
z

#Array陣列(多維)
x <- 1:24
dim(x) <- c(3, 4, 2)
x
x <- array(1:24, dim = c(3, 4, 2))
x
x[2,3,1]
x[3,1,2]

#Factor(因子)(比vector多了類別統計)
sex <- factor(c("男", "女", "男", "男", "女"))
sex

#Data Frame資料框架
id <- c(1, 2, 3, 4)
age <- c(25, 30, 35, 40)
sex <- c("Male", "Male", "Female", "Female")
pay <- c(30000, 40000, 45000, 50000)
x_dataframe <- data.frame(id, age, sex, pay)
x_dataframe
x_dataframe[2]  #第二欄資料
x_dataframe$age
x_dataframe[2,]  #第二筆資料
edit(x_dataframe)  #表格
y <- edit(x_dataframe)  #y存放改好的值
y

#list
id <- c(1, 2, 3)
sex <- c("male", "male", "female")
pay <- c(30000, 40000, 50000)
y_dataframe <- data.frame(id, sex, pay)
gender <- factor("男", "男", "女")
paul.family <- list(namw = "paul", wife = "iris", no.kids = 3, kids.age = c(25, 28,30), gender, y_dataframe)
paul.family
paul.familykid.age
paul.family[4]
paul.family[4][2]  #錯的
paul.family[[4]]  #把欄位名稱去除
paul.family[[4]][2]


#第二章

#設定工作目錄
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

#sep如與檔案不符則會讀錯誤(sep預設為tab(\t))
x <- read.table("x.csv", sep = " ", header = TRUE)
x

#scan讀取consol輸入文字
x <- scan("")  #輸入值後按Enter，不輸入資料時按兩次Enter
x
str(x)

my <- scan(file = "", what = list(name = "", pay = integer(), sex = ""))
my
str(my)

x <- scan("")
x
str(x)

setwd("c:/R")

#資料寫入
write.table(X, "c:/R/X_File.csv", row.names = FALSE, col.names = FALSE, sep = ",")  #不能直接放在C槽下面，需要有資料夾

#內建資料集
data()
data("iris")
iris
str(iris)
summary(iris)

save(iris, file = "iris.RDATA")

load("iris.RDATA", .GlobalEnv)


#第三章

a <- c(1, 2, 3)
x <- a+2
x
(x <- a+2)  #加括號表示直接顯示

{a <- c(1, 2, 3); x <- a+2}  #合併，行與行之間加；
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

#ifelse  合併
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

#repeat  要加break
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
apply(x, 1, sum)  #1代表列相加
apply(x, 2, sum)  #2代表欄相加

#自訂函數
myfun <- function(x) {y <- x + 2; return(y)}
myfun(1)
myfun(2)
myfun() #錯誤
myfun <- function(x = 1) {y <- x + 2; return(y)}  #參數預設值
myfun()

#factorial階乘
factorial <- function(x = 1){
  y = 1
  for (i in 1:x) {y <- y * i}
  return(y)
}
factorial(4)


#第四章

demo(graphics)
demo(image)

y <- sin(1:20)
plot(y, type = "l", xlab = "X", ylab = "Y")
title(main = "Sin Plot", sub = "圖4-2")
points(5, 0.5)  #畫點

#互動式繪圖
plot(2, 2)
pts <- locator(n = 3)
pts
par()


