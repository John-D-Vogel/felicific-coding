getwd()
load("airfare.RData")
attach(data)
desc
m <- lm(fare ~ dist + passen)
m
summary(m)
m <- lm(fare ~ dist + passen + bmktshr)
load("wage1.RData")
attach(data)
m2 <- lm(wage ~ educ + exper + tenure + female)
summary(m2)
