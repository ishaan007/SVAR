setwd("C:/Users/Ishaan/Desktop/stocks")
dat<-read.csv("annuallog.csv")
library("vars")

#estimate var
var.2c <- VAR(dat, p = 1, type = "const")

#a and b matrices of the AB-model
amat <- diag(4)
diag(amat) <- NA
amat[2, 1] <- NA
amat[3, 1] <- NA
amat[4, 1] <- NA
amat[3, 2] <- NA
amat[4, 2] <- NA
amat[4, 3] <- NA
amat[3, 4] <- NA
bmat <- diag(4)
diag(bmat) <- 1

## sructural var Estimation direct scoring
svar <- SVAR(x = var.2c, estmethod = "direct", Amat = amat, Bmat = bmat,hessian = TRUE, method = "BFGS")

#impulse response function
arr<-colnames(dat)
a<- as.vector(as.character(arr))
imp<-a[3]
res<-a[0]


# Plotting of Impulse responses
----------------------------------------------------------------------------------------------------

# BID on GDP
irf <- irf(svar, impulse = "BID", response = c("GDP"), n.ahead = 10,
    ortho = TRUE, cumulative = FALSE, boot = TRUE, ci = 0.95,
    runs = 100, seed = NULL)
plot(irf,ylab="GDP")

# bid on Index
irf <- irf(svar, impulse = "BID", response = c("Close"), n.ahead = 10,
           ortho = TRUE, cumulative = FALSE, boot = TRUE, ci = 0.95,
           runs = 100, seed = NULL)
plot(irf,ylab="Close")

# bid on Inflation
irf <- irf(svar, impulse = "BID", response = c("Inflation"), n.ahead = 10,
           ortho = TRUE, cumulative = FALSE, boot = TRUE, ci = 0.95,
           runs = 100, seed = NULL)
plot(irf,ylab="Inflation")

-----------------------------------------------------------------------------------------------------
  
# GDP on Inflation
irf <- irf(svar, impulse = "GDP", response = c("Inflation"), n.ahead = 10,
             ortho = TRUE, cumulative = FALSE, boot = TRUE, ci = 0.95,
             runs = 100, seed = NULL)
plot(irf,ylab="Inflation")


# GDP on Index
irf <- irf(svar, impulse = "GDP", response = c("Close"), n.ahead = 10,
           ortho = TRUE, cumulative = FALSE, boot = TRUE, ci = 0.95,
           runs = 100, seed = NULL)
plot(irf,ylab="Close")


# GDP on BID
irf <- irf(svar, impulse = "GDP", response = c("BID"), n.ahead = 10,
           ortho = TRUE, cumulative = FALSE, boot = TRUE, ci = 0.95,
           runs = 100, seed = NULL)
plot(irf,ylab="BID")

----------------------------------------------------------------------------------------------------
  
# Inflation on GDP
irf <- irf(svar, impulse = "Inflation", response = c("GDP"), n.ahead = 10,
           ortho = TRUE, cumulative = FALSE, boot = TRUE, ci = 0.95,
           runs = 100, seed = NULL)
plot(irf,ylab="GDP")


# Inflation on Close
irf <- irf(svar, impulse = "Inflation", response = c("Close"), n.ahead = 10,
           ortho = TRUE, cumulative = FALSE, boot = TRUE, ci = 0.95,
           runs = 100, seed = NULL)
plot(irf,ylab="Close")


# Inflation on BID
irf <- irf(svar, impulse = "Inflation", response = c("BID"), n.ahead = 10,
           ortho = TRUE, cumulative = FALSE, boot = TRUE, ci = 0.95,
           runs = 100, seed = NULL)
plot(irf,ylab="BID")

----------------------------------------------------------------------------------------------------
  
# Index on GDP
irf <- irf(svar, impulse = "Close", response = c("GDP"), n.ahead = 10,
           ortho = TRUE, cumulative = FALSE, boot = TRUE, ci = 0.95,
           runs = 100, seed = NULL)
plot(irf,ylab="GDP")

# Index on Inflation
irf <- irf(svar, impulse = "Close", response = c("Inflation"), n.ahead = 10,
           ortho = TRUE, cumulative = FALSE, boot = TRUE, ci = 0.95,
           runs = 100, seed = NULL)
plot(irf,ylab="Inflation")

# Index on BID
irf <- irf(svar, impulse = "Close", response = c("BID"), n.ahead = 10,
           ortho = TRUE, cumulative = FALSE, boot = TRUE, ci = 0.95,
           runs = 100, seed = NULL)
plot(irf,ylab="BID")

----------------------------------------------------------------------------------------------------

