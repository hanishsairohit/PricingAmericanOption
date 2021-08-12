
source("AmericanOptionPricer-2.R")
library(quantmod)


# 1 Month (20 Days) Lookback Window

## Importing Historical SPY Data from Yahoo Finance

getSymbols("SPY", src="yahoo", from="2021-04-06", to="2021-05-04")

plot(SPY$SPY.Close, main="SPY Close Price from April 6th, 2021 to May 4th, 2021")

## Estimating the historical volatility 

SPY_Prices1=SPY$SPY.Close
head(SPY_Prices1)
tail(SPY_Prices1)
n_days1 = length(SPY_Prices1)

## Daily Log Return Computation & Plot

d_ret1=dailyReturn(SPY_Prices1, type="log")
plot(d_ret1, main = "SPY 1-Month Daily Log Returns")

qqnorm(d_ret1, main = "Q-Q Plot of SPY 1-Month Returns")

## Annualized volatility

ann_vol1 = sqrt(252.0)*sd(d_ret1) 
print(ann_vol1)

histvol_1month = ann_vol1
histvolerr1=ann_vol1/sqrt(2*n_days1)




# 3 Month (63 Days) Lookback Window

## Importing Historical SPY Data from Yahoo Finance

getSymbols("SPY", src="yahoo", from="2021-02-02", to="2021-05-04")

plot(SPY$SPY.Close, main="SPY Close Price from February 2nd, 2021 to May 4th, 2021")

## Estimating the historical volatility 

SPY_Prices3=SPY$SPY.Close
head(SPY_Prices3)
tail(SPY_Prices3)
n_days3 = length(SPY_Prices3)

## Daily Log Return Computation & Plot

d_ret3=dailyReturn(SPY_Prices3, type="log")
plot(d_ret3, main = "SPY 3-Month Daily Log Returns")

qqnorm(d_ret3, main = "Q-Q Plot of SPY 3-Month Returns")

## Annualized volatility

ann_vol3 = sqrt(252.0)*sd(d_ret3) 
print(ann_vol3)

histvol_3month = ann_vol3
histvolerr3=ann_vol3/sqrt(2*n_days3)




# 6 Month (126 Days) Lookback Window

## Importing Historical SPY Data from Yahoo Finance

getSymbols("SPY", src="yahoo", from="2020-10-30", to="2021-05-04")

plot(SPY$SPY.Close, main="SPY Close Price from October 30th, 2020 to May 4th, 2021")

## Estimating the historical volatility 

SPY_Prices6=SPY$SPY.Close
head(SPY_Prices6)
tail(SPY_Prices6)
n_days6 = length(SPY_Prices6)

## Daily Log Return Computation & Plot

d_ret6=dailyReturn(SPY_Prices6, type="log")
plot(d_ret6, main = "SPY 6-Month Daily Log Returns")

qqnorm(d_ret6, main = "Q-Q Plot of SPY 6-Month Returns")

## Annualized volatility

ann_vol6 = sqrt(252.0)*sd(d_ret6) 
print(ann_vol6)

histvol_6month = ann_vol6
histvolerr6=ann_vol6/sqrt(2*n_days6)




# Risk-free interest rate (13-week T-bill rate)
getSymbols("^IRX", src="yahoo", from="2021-04-04", to="2021-05-04")

rfrate=IRX$IRX.Close

n_rf <- length(rfrate)

plot(rfrate, main="13-week T-bill rate")

tail(rfrate)
rf <- 0.010/100


