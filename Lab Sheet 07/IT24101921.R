setwd("C:\\Users\\USER\\OneDrive\\Desktop\\Lab7_PS")

##Question 01
#Uniform distribution
#Here, random variable x follows a uniform distribution with a=0 and b=30.

#part 1
#It asks to find P(x<=10). Following command gives the cumulative
#probability (<=), if ""lower.tail" argument euals to "True".
punif(10,min = 0, max = 30, lower.tail = TRUE)


#Part 2
#It asks to find P(x>20). This can find using "punif" command as follows.
# You need to rearrange the probability statement as follows.
#P(X>20) = 1-P(X<=20)
#Then command will be as follows.
1-punif(20,min = 0, max = 30, lower.tail = TRUE)
#Or else following command can also used by keeping argument "lower.tail" as  "FALSE".
#Here, When that argument is "FALSE", it means that P(X>20).
punif(20,min = 0, max = 30, lower.tail = FALSE)


##Question 02
#Exponential Distribution
#Here, random variable X has exponential distribution with lambda = 0.5

#Part 1
#It asks to find P(X<=3). Following command gives the cumulative
#probability (<=), if ""lower.tail" argument equals to "TRUE".
pexp(3,rate = 0.5,lower.tail = TRUE)

#Part 2
#It asks to find P(x>4). This can find using "pexp" command as follows.
# You need to rearrange the probability statement as follows.
#P(X>4) = 1-P(X<=4)
#Then command will be as follows.
1-pexp(4,rate = 0.5, lower.tail = TRUE)
#Or else following command can also used by keeping argument "lower.tail" as  "FALSE".
#Here, When that argument is "FALSE", it means that P(X>4).
pexp(4,rate = 0.5, lower.tail = FALSE)

#Part 3
#It asks to find P(2<x>4). This can find using "pexp" command as follows.
# You need to rearrange the probability statement as follows.
#P(X>4) = 1-P(X<=4)
#Then command will be as follows.
1-pexp(4,rate = 0.5, lower.tail = TRUE)-pexp(2,rate = 0.5,lower.tail = TRUE)


##Question 03
#Normal Distribution
#Here, random variable X has normal distribution with mean = 36.8 and standard deviation=0.4

#part 1
#It asks to find P(x>=37.9).  Following command gives the cumulative
#probability (<=), if ""lower.tail" argument equals to "TRUE".
# You need to rearrange  probability statement as follows.
#P(X>=37.9) = 1-PX<(37.9)
#Then command will be as follows.
1-pnorm(37.9,mean = 36.8, sd=0.4, lower.tail = TRUE)

#Part 2
#It asks to find P(36.4<x<36.9). This can find using "pnorm" command as follows.
# You need to rearrange the probability statement as follows.
#P(36.4<X<36.9) = P(X<=36.9)
#Then command will be as follows.
pnorm(36.9,mean = 36.8, sd=0.4, lower.tail = TRUE)-pnorm(36.4,mean=36.8, sd=0.4,lower.tail = TRUE)

#part 3
#Let consider that the maximum temperature they want to find is "b".
#Then, P(X<b) = 1.2% = 0.012
# Here, they want to find the value of "b". This can be done using "gnore" command.
#P(X>=37.9) = 1-P(X<37.9)-p(X<=36.4)
qnorm(0.012,mean = 36.8, sd=0.4,lower.tail = TRUE)

#part 4
#Let consider that the minimum temperature they want to find is "b".
#Then, P(X<b) = 1.0% = 0.01
# Here, they want to find the value of "b". This can be done using "qnore" command.
#Here, you need to make the "lower.tail" argument as FALSE.
qnorm(0.01,mean = 36.8, sd=0.4,lower.tail = FALSE)



##Exercise
#Question 1 
#Uniform Distribution
#X ~ Uniform(0, 40)
#Probability that train arrives between 8:10 (10) and 8:25 (25)
punif(25, min = 0, max = 40, lower.tail = TRUE) - punif(10, min = 0, max = 40, lower.tail = TRUE)

#Question 2 
#Exponential Distribution
#lambda = 1/3
#Probability that update takes at most 2 hours
pexp(2, rate = 1/3, lower.tail = TRUE)

#Question 3 
#Part i
#Probability of IQ above 130
1 - pnorm(130, mean = 100, sd = 15)

#Question 3 
#Part ii
#IQ score that represents the 95th percentile
qnorm(0.95, mean = 100, sd = 15)

