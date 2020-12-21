setwd("~/Documents/Eco 4000/Data Sets- R")
load("wage1.RData")
attach(data)
desc
m <- lm(wage ~ educ + exper + expersq)
summary(m)
coef <- coefficients(m)
(coef[3]+coef[4]*2*11)*(3)
educsq <- educ^2
m1 <- lm(wage ~ educ + exper + educsq)
