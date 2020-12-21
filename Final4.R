setwd("~/Documents/Eco 4000/Data Sets- R")
load("movies.Rdata")
attach(data)
desc
lassaults <- log(assaults)
m <- lm(lassaults ~ attend_v + attend_m + attend_n)
summary(m)
