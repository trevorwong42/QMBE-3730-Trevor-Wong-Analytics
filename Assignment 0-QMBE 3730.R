#how big is my data set?
creditdata <- read.csv("G:\\My Drive\\2024 Spring\\QMBE 3730 Analytic\\loan_default_data_set.csv")
#20000 observations of 21 variables


#What are the column names
ncol(creditdata)
head(creditdata)


#What are the data types
# the data varies. There is both Numerical data and categorical data.
#for example tot_bal is numerical continuous because it can be any value of money the borrow has
#Def_ind on the other hand is categorical nominal because, while the value is a number, it is indicating if the borrower is in default or not. A mutually exclusive category
#Also the education is categorical ordinal because they are not mutually exclusive


#How much of my data set is missing
sum(is.na(creditdata))


#What initial story does the data convey
#this data looks at a number of variables and reports if the account is in default.
#An example of these variable is total credit balance or number of auto loans opened in last 36 months


#Summary statistics(mean,variance,max,SD)
mean(creditdata$tot_balance, na.rm=TRUE)
#the average total outstanding balance is $107439
max(creditdata$tot_balance, na.rm=TRUE)
# this is saying the max of total balance is 2e+05, this seems absurdly high possibly an error
var(creditdata$tot_bal,creditdata$def_ind)
#this measures how far each observation is from the mean
sd(creditdata$tot_balance, na.rm=TRUE)
