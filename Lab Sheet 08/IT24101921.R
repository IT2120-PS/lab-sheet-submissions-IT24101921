setwd("C:/Users/USER/OneDrive/Desktop/Lab_08_PS")

##Importing the data set
data<-read.table("Data - Lab 8.txt",header = TRUE)
fix(data)
attach(data)

##Question 01
popmn <- mean (Nicotine)
popvar <- var (Nicotine)

##Question 02
#First create null vectors to store sample data sets.
samples <- c()
n <- c()
#The "for" loop will be used to create and assign samples of size 5 for "samples" variable created above.
#Using "sample" command we can draw a random sample either with replacement or without replacement.
#By making "replace" argument as TRUE we can create samples with replacement.
for(i in 1:30) {
  s <- sample(Nicotine,5,replace=TRUE)
  samples <- cbind(samples,s)
  n <- c(n,paste('S',i))
}  
#Assign column names for each sample created. Names have stored earlier under "n" variable.
colnames (samples)=n

#Using "apply" command we can ask to calculate any function such as mean, variance, etc. row wise or
#column wise in a matrix.
#Here, considering the second argument as "2" we can calculate either mean/variance column wise
#which stored earlier in "samples" variable which is a matrix.
s.means <- apply(samples,2,mean)
s.means 
s.vars <- apply(samples,2,var)
s.vars

##Question 03
#Following commands will calculate mean and variance of sample means stored in "s.means" variable.
samplemean <- mean(s.means)
samplevars <- var (s.means)

#Question 04
#Compare the population mean and mean of sample means.
popmn
samplemean

#Question 05
#Compare the population variance and variance of sample means.
truevar=popvar/5
samplevars


## Exercise

# Import the data set
data2 <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data2) 
attach(data2)

# Question 01
# Calculate the population mean and population standard deviation of the laptop bag weights
popmn_laptops <- mean(Weight.kg.)
popsd_laptops <- sd(Weight.kg.)

popmn_laptops
popsd_laptops


# Question 02
# First create null vectors to store sample data sets.
samples <- c()
n <- c()

# The "for" loop will be used to create and assign 25 samples of size 6 for "samples" variable created above.
# Using "sample" command we can draw a random sample either with replacement or without replacement.
# By making "replace" argument as TRUE we can create samples with replacement.
for(i in 1:25) {
  s <- sample(Weight.kg., 6, replace = TRUE)
  samples <- cbind(samples, s)
  n <- c(n, paste('S', i))
}

# Assign column names for each sample created. Names have stored earlier under "n" variable.
colnames(samples) <- n

# Using "apply" command we can calculate any function such as mean or SD column wise in a matrix.
# Here, considering the second argument as "2" we calculate column-wise sample means and SDs.
s.means <- apply(samples, 2, mean)
s.means

s.sds <- apply(samples, 2, sd)
s.sds


# Question 03
# Following commands will calculate the mean and standard deviation of the sample means stored in "s.means".
samplemean_laptops <- mean(s.means)
samplesd_laptops <- sd(s.means)

samplemean_laptops
samplesd_laptops

# Calculate the true standard deviation of sample means using population standard deviation
true_sd_laptops <- popsd_laptops / sqrt(6)
true_sd_laptops
