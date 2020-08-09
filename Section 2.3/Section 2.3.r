# The function c() is for concatenate. Concatenating a collection of numbers creates a vector. Assignment can be done with <- or =.

x <- c(1,2,3,4)
x
x = c(4,3,2,1)
x

# To get help, type ?funcname. When run in the terminal, this will open a new window.
?c

#Check the length of a vector:
length(x)

# Here is a list of all variables we have created so far:

ls()

# Here we can delete them:
rm(x)
ls()


# To delete all at the same time:

rm(list=ls())

ls()


# Create a matrix:

m = matrix(data=c(1,2,3,4),nrow=2,ncol=2)
m

# data, nrow, and ncol are the default first, second, and third entries

n = matrix(c(1,2,3,4),2,2)
n
all(m==n)


# To fill in matrices by rows:
m = matrix(c(1,2,3,4),2,2,byrow=TRUE)
m


# Operations are done componentwise:

m^2
sqrt(m)

# rnorm creates a vector of random normal variables, with first argument n the sample size. The defaults are mean = 0 and sd=1
#cor() computes the correlation between two random variables.

x = rnorm(50)
y = x+rnorm(50,mean=50,sd=.1)
cor(x,y)

# To reproduce the exact same random numbers, use set.seed()
set.seed(1303)
rnorm(50)

# We can compute the mean(), var(), and sd() of a vector of numbers.
mean(y)
sd(y)
var(y)


# We can make a scatterplot using plot(x,y)


x = rnorm(100)
y = rnorm(100)
plot(x,y)

plot(x,y,xlab="this is the x-axis",ylab="this is the y-axis", main="Plot of X vs Y")

# To save a plot, use pdf() or jpeg(). I believe the below code is expected to be run in the terminal to produce the desired output file.
# Note that dev.off() tells R we are done creating the plot.
pdf("Section 2.3.pdf")
plot(x,y,col="green")
dev.off()


# seq(a,b) makes a sequence of numbers between a and b. seq(a,b,c) makes a list of numbers between a and b spaces by c.
# Shorthand for seq(a,b) is a:b. length=c creates c evenly spaced numbers between a and b:
seq(1,10)
seq(0,1,.1)
1:10
seq(0,10,length=5)


# Contour plots represent 3-D data. contour(xvec,yvec,xymatrixz). image() works the same way, but it produces a heatmap.
# persp() produces a 3-D plot. The arguments theta and phi affect viewing angle.

# We use the usual matrix indexing for entries. Note that this is NOT zero indexed!

m = matrix(c(1:12),3,4,byrow=TRUE)
m
m[1,2]
m[1:2,2:3]
m[1:2,]

# To keep all rows/columns except those indicated:

m[-3,]

# The size of a matrix is given by dim()
dim(m[-3,])
