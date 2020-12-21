setwd("~/Documents/Eco 4000/Data Sets- R")
load("sleep75.RData")
attach(data)
desc
m <- lm(sleep ~ educ + earns74 + marr + age)
summary(m)
length(sleep)
SSR <- sum(m$residuals^2)
SSR
