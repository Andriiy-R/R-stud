#1. Create variables of basic (atomic) types. Basic types: 
#   character, numeric, integer, complex, logical.

a1 = "three"
class(a1)
a2 = 3
class(a2)
a3 = 3L
class(a3)
a4 = 3+3i
class (a4)
a5 = TRUE
class(a5)

#2. Create vectors that: contain a sequence from 5 to 75; contains the numbers
#   3.14, 2.71, 0, 13; 100 TRUE values

x2 <- c(5:75)
x3 <- c(3.14, 2.71, 0, 13)
x4 <- c(rep(TRUE,100))

#3. Create the next matrix with matrix, and with cbind or rbind

m3 <- matrix(data=c(0.5, 3.9, 0, 2, 1.3, 131, 2.2, 7, 3.5, 2.8, 4.6, 5.1), ncol=3)
m10 <- c(0.5, 1.3, 3.5)
m11 <- c(3.9, 131, 2.8)
m12 <- c(0, 2.2, 4.6)
m13 <- c(2, 7, 5.1)
m4 <- rbind(m10, m11, m12, m13)

#4. Create an arbitrary list (list) in which to include all basic types.

b4 <- list("three",3.03,3L,3+3i,TRUE)

#5. Create a factor with three levels "baby", "child", "adult".
human <- c("baby","child","adult","child","adult","baby")
human <- factor(human,levels=c("baby","child","adult"),ordered=TRUE)

#6. Find the index of the first value of NA in the vector 1, 2, 3, 4, NA, 6, 7, 
#   NA, 9, NA, 11. Find the number of NA values.
g1 <- c(1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11)

g2 <- min(which(is.na(g1)))
g21 <- as.numeric(g2)

g3 <- length(which(is.na(g1)))
g31 = as.numeric(g3)

#7. Create an arbitrary data frame and display it in the console.

g <- c(17, 14, 13)
a <- c(3, 9, 11)
top <- data.frame(g,a)

#8. Rename the columns of this data frame.

names(top) <- c("goals", "assists")
