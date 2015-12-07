#################################################################################################

# now to convert daily data to monthly you need 'xts' package xtensible time series
# first convert your data.frame to xts
require(xts)

# convert data from 'data.frame' to xts
mibid <- xts(mibid[,1], order.by=as.Date(mibid$Date))

#aggregate
#colMeans take means of all the values of that month.
agg_mibid <- apply.monthly(mibid, colMeans)

# convert back to data.frame
agg_mibid <- data.frame(Date=index(agg_ymibid), agg_ymibid, row.names=NULL)



#####################################################################################################


# To convert annual data to monthly using 'data.table'

# data.table is the advance version of data.frame every data.frame is data.table but vice versa is not true. data.table is very fast in terms of performance.

#setDT is used to convert frame to table and for the use of ':='
setDT(gdp)

# adding Dates
gdp[, Date := as.IDate(Date)]

# adding Years
gdp[, year := year(Date)]

#setkey sorts the gdpnew data according to year
setkey(gdp, year)

gdp2 <- gdp[CJ(year, month = 1:12)]

# To get different Dates
gdp[, Date := as.IDate(paste(year, month, "01", sep = "-"))]


#####################################################################################################

# While doing this you may encounter the problem of Dates format. Date have many formats in R mainly 'Date', 'Factor' and 'POSOX'.
# for doing the above operation you have to convert your Date format to 'Date'.
# You can check the format by using 'str'
str(agg_mibid)

# To convert
# For date arguments run '?strptime' and see the arguments
data$Date = as.Date(data$Date, format="%d-%m-%y")

#####################################################################################################