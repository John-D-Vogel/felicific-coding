setwd("~/Documents/Eco 4000/Data Sets- R")
load("movies.Rdata")
attach(data)
desc
lassaults <- log(assaults)
attend <- (attend_v + attend_m + attend_n)
m_r <- lm(lassaults ~ attend_v)
m_ur <- lm(lassaults ~ attend_v + month1 + month3 + month4 + month5 + month6 + month7 + month8 + month9 + month10 + month11 + month12)
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
F_SSR
F_RR
summary(m_r)