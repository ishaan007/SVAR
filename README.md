# MonetaryPolicy-StructuralVARs-R

*My research got published in DUJURI Vol4 ISSN 2395 - 2334.Follow the link to read the [Complete Paper](http://journals.du.ac.in/ugresearch/pdf-vol5/13.pdf)
*For reviews or suggestions.You can open an issue or drop a mail at contact.ishaanarora@gmail.com

##Abstract
A wide variety of theoretical and empirical models have been employed to analyse the relationship between monetary policy and stock prices. These have provided some evidence to justify that monetary policy can impact asset prices and vice versa. We aim to analyse the interaction between monetary policy and asset prices in India, using structural VARs. This paper seeks to explore the extent of interdependence that exists between the asset price and monetary policy in India. A structural VAR model is employed in the study to understand the interdependence between monetary policy and stock prices.

##Data used:

 [Annual Data used in the project](https://github.com/ronitkishore/MonetaryPolicy-StructuralVARs-R/blob/master/Data/annual_data.csv)
 *The data for MIBID and NIFTY is converted from daily frequency to annualy by using __XTS__ package in R.*
 [see script](https://github.com/ronitkishore/MonetaryPolicy-StructuralVARs-R/blob/master/R%20scripts/data_clean.R)


 [Monthly Data used in the project](https://github.com/ronitkishore/MonetaryPolicy-StructuralVARs-R/blob/master/Data/monthly_data.csv)
 *This data for MIBID and NIFTY is converted from daily frequency to monthly by using __XTS__ package in R. and data for GDP and Inflation is converted from annual frequency to monthly using __XTS__ package in R.* 
 [see script](https://github.com/ronitkishore/MonetaryPolicy-StructuralVARs-R/blob/master/R%20scripts/data_clean.R)


1. Stock Index of India, which we've taken to be NIFTY.

    Data Source : [nse-india.com](http://nseindia.com/products/content/equities/indices/historical_index_data.htm)

2. Mumbai Interbank Bid Rate (MIBID): This is the interest rate that a bank participating in the Indian interbank market would be willing to pay to attract a deposit from another participant bank.

    Data Source : [nse-india.com](http://www.nse-india.com/marketinfo/eod_information/bidbor.jsp)

3. Real GDP of India

    Data Source : [data.gov.in](data.gov.in)

4. Inflation rate based on Consumer price index(CPI)

    Data Source : [inflation.eu](http://www.inflation.eu/inflation-rates/india/historic-inflation/cpi-inflation-india.aspx)

