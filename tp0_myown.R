'''

# Part1 - Basic R

weight <- c(60,72,57,90,95,72)
height <- c(1.75, 1.80, 1.65, 1.90, 1.74, 1.91)
bmi <- weight / height^2
bmi # Type this in R to see the computed values
plot(height,weight) # A basic scatterplot


simdata <- rchisq(100,8)
simdata

par(mfrow=c(2,2))
hist(simdata) # this is the default version
hist(simdata,freq=FALSE) # what is the difference here?
hist(simdata,freq=FALSE,breaks=2) # experiment with breaks
bps <- c(0,2,4,6,8,10,15,25) # make your own breakpoints
hist(simdata,freq=FALSE,breaks=bps)

boxplot(simdata)
quantile(simdata)

mean(simdata)
sd(simdata)
median(simdata)
IQR(simdata)
mad(simdata)
'''


'''
#Part 2 - Hellung data

#install.packages("ISwR") if not installed yet
library(ISwR)
?hellung
data(hellung)
attach(hellung) #see what is this is used for
names(hellung)
summary(hellung)

par(mfrow=c(1,2))

boxplot(conc ~ glucose)
boxplot(diameter ~ glucose)
'''


# Part 3 - Simulated microarray data

?set.seed
set.seed(3)

n = 30000
my.data = matrix(data = NA, nrow = n, ncol = 10)

# ask if the code below is the correct way to do this
for (i in (1:10)) {
  i
  my.data[,i] <- rnorm(n, mean = 0, sd = 1)

}

my.data

par(mfrow=c(2,2),pch=".")

qqnorm(my.data[,7])
qqline(my.data[,7]) # it adds a line on the plotted plot

par(mfrow=c(1,1)) # to get just 1 plot
boxplot(data.frame(my.data))

med.order<-order(apply(my.data,2,median)) #see how this works

boxplot(data.frame(my.data[,med.order]))
