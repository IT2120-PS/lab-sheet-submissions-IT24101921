setwd("C:\\Users\\IT24101921\\Desktop\\IT24101921\\Lab_10")
getwd()
#Question 1
#Part1
observed <- c(55, 62,43, 46,50)
prob <- c(.2, .2, .2, .2, .2)
chisq.test(x=observed,p=prob)

#part 2
#consider 5% level of significant for the test.
#Rejection Region: If the p value for the test is less than 0.05,
#reject the null hypothesis is at 5% level of significantce.
#p value for the test got as 0.351.
#conclusion: since the p value (0.351) is greater than 0.05, do not reject null hypothesis at 5%.
#level of significance. There fore we can conclude that probability that customers arriving on
#each day will be same which is 0.2.

#Question 02
#part 1
file_path <- "http://www.sthda.com/sthda/RDoc/data/housetasks.txt"
housetasks <- read.delim(file_path, row.names = 1)
housetasks

#part 2
chisq <- chisq.test(housetasks)
chisq


#Exercise
#Question 1
#part 1
#Null Hypothesis (H0): Customers choose each snack type with equal probability. 
#Alternative Hypothesis (H1): Customers do not choose all snack types with equal probability. 

#part 2
observed <- c(120, 95, 85, 100)
chi_test <- chisq.test(x = observed, p = rep(0.25, 4))
chi_test

#part 3
#p-value (0.08966) > 0.05 ,we fail to reject the null hypothesis at the 5% significance level.