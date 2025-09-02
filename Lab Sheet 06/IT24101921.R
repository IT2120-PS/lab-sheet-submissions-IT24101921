setwd("C:/Users/USER/OneDrive/Desktop/Lab_6_PS")

##Question 01
##Part 1
##Binomial Distribution
#here, random variable X has binomial distribution with n=44 and p=0.92

#part 2
#It asks to find P(x=40).Following command gives the density.
#In other words, Probability of getting an exact values can be calculated using "dbinom" command.
dbinom(40,44,0.92)

#Part 3
#It asks to find P(X<=35). Following command gives the cumulative 
#probability (<=), if "lower.tail" argument equals to "TRUE".
pbinom(35, 44,0.92,lower.tail = TRUE)

#Part 4
#It ask to find P(X>=38). This can find using "pbinom" command as follows.
#You need to rearrange the probability statement as follows.
#P(x>=38) = 1-P(X<38) = 1-P(X<=37)
#Then command will be as follows.
1- pbinom(37, 44, 0.92, lower.tail = TRUE)
#Or else following command can also used by keeping arugument "lower.tail" as "FALSE".
#Here, when that argument is "FALSE", it means thst P(X>37) which is same as P(X>=38)
pbinom(37, 44, 0.92,lower.tail = FALSE)

#Part 5
#It asks to find P(40<=X<=42). This can find using "pbinom" command as follows.
#You need to rearrange the probability statement as follows.
#P(40<=X<=42) = P(X<=42)-p(X<=39)
#Then command will be as follows.
pbinom(42,44,0.92,lower.tail = TRUE)-pbinom(39,44,0.92,lower.tail = TRUE)

##Question 02
#Part 1
#Number of babies born in a hospital on a day

#Part 2
#Poison distribution
#Here, random variable X has poisson distribution with lambda=5

#Part 3
#It asks to find P(X=6), Following command gives density.
#In other words, probability of getting an exact value can be calculated using "dpois" command.
dpois(6,5)

#part 4
#It asks keep "lower.tail" argument as "TRUE", that means P (X<=6).
#Since we need P(X>6), keep the "lower.tail" argument as "FALSE".
ppois(6, 5,lower.tail = FALSE)






setwd("C:/Users/USER/OneDrive/Desktop/Lab_6_PS")
##Exercise
#Question 1
#Part 1
##Binomial Distribution
#here, random variable X has binomial distribution with n=50 and p=0.85

## Part 2
# It asks to find P(X >= 47).
# Rearrange: P(X >= 47) = 1 - P(X <= 46).
# Following command calculates this probability using "pbinom".
1 - pbinom(46, 50, 0.85, lower.tail = TRUE)

# Or we can also sum the exact probabilities for X = 47, 48, 49, 50:
sum(dbinom(47:50, 50, 0.85))

## Question 02
## Part 1
# Random variable X = number of calls received per hour in a call center.

## Part 2
# Here, X has Poisson distribution with λ = 12.
# That means X ~ Poisson(12).

## Part 3
# It asks to find P(X = 15).
# Probability of an exact value can be calculated using "dpois".
dpois(15, 12)

