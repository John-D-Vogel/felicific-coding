setwd("~/Documents/Eco 4000/Data Sets- R")
load("wage1.RData")
attach(data)
desc
m <- lm(wage ~ educ + exper)
summary(m)
checkAeduc <- lm(educ ~ female)
checkAexper <- lm(exper ~ female)
summary(checkAeduc)
summary(checkAexper)
checkBwage <- lm(wage ~ female)
summary(checkBwage)
correctedm <- lm(wage ~ educ + exper + female)
correctedm
m
