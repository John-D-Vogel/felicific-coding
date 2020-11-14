setwd("~/Documents/Eco 4000/Data Sets- R")
load("airfare.RData")
attach(data)
desc
y97 <- as.numeric(year==1997)

m1 <- lm(fare ~ passen + dist + y97 + y98 + y99)
coeffs_m1 <- coef(m1)

m2 <- lm(fare ~ passen + dist + y97 + y98 + y00)
coeffs_m2 <- coef(m2)

m3 <- lm(fare ~ passen + dist + y97 + y99 + y00)
coeffs_m3 <- coef(m3)

m4 <- lm(fare ~ passen + dist + y98 + y99 + y00)
coeffs_m4 <- coef(m4)

myprediction <- function(passengers, distance, y1997, y1998, y1999, y2000) {
fare1 <- coeffs_m1[1] + coeffs_m1[2]*passengers + coeffs_m1[3]*distance + 
coeffs_m1[4]*y1997 + coeffs_m1[5]*y1998 + coeffs_m1[6]*y1999
fare2 <- coeffs_m2[1] + coeffs_m2[2]*passengers + coeffs_m2[3]*distance + 
coeffs_m2[4]*y1997 + coeffs_m2[5]*y1998 + coeffs_m1[6]*y2000
fare3 <- coeffs_m3[1] + coeffs_m3[2]*passengers + coeffs_m3[3]*distance + 
coeffs_m3[4]*y1997 + coeffs_m3[5]*y1999 + coeffs_m3[6]*y2000
fare4 <- coeffs_m4[1] + coeffs_m4[2]*passengers + coeffs_m4[3]*distance + 
coeffs_m4[4]*y1998 + coeffs_m4[5]*y1999 + coeffs_m4[6]*y2000

thefares <- c(fare1, fare2, fare3, fare4)
return(thefares)
}
myprediction(100,456,0,0,1,0)

