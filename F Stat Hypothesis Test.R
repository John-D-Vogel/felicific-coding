setwd("~/Documents/Eco 4000/Data Sets- R")
load("hprice1.RData")
attach(data)
desc
m_r <- lm(price ~ bdrms)
m_ur <- lm(price ~ bdrms + lotsize + colonial + sqrft)
summary(m_r)
summary(m_ur)
df_ur <- summary(m_ur)$df[2]
df_r <- summary(m_r)$df[2]
q <- df_r - df_ur
SSR_ur <- sum(m_ur$residuals^2)
SSR_r <- sum(m_r$residuals^2)
RR_ur <- summary(m_ur)$r.squared
RR_r <- summary(m_r)$r.squared
F_SSR <- ((SSR_r - SSR_ur)/q)/(SSR_ur/df_ur)
F_RR <- ((RR_ur - RR_r)/q)/((1 - RR_ur)/df_ur)
critical_value <- qf(0.95,q,df_ur)
critical_value
if (critical_value < F_RR)
{
  H0 <- "reject"
} else {
  H0 <- "accept"
}
H0