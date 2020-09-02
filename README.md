# Risk-Management
HW1:Market Risk
Three methods to measure the market risk: 1.historical VaR 2.parametric VaR 3.factor-model VaR
#######
1. Choose 10 stocks and their 1 year historical daily prices.
2. Form a portfolio with chosen weights/shares.
3. Compute their daily returns (P&Ls), mean and standard deviation.
  a. Historical VaR
    i. Locate the 1% (or 99% depending on how you look at it) position
       in the distribution (for a 250-observation distribution 1% is
       roughly the 3rd observation after sorting).
    ii. One can try Perform an alternative method for mean and standard
        deviation such as 0.95 decay.
  b. Parametric VaR
    i. Compute variance-covariance matrix (both return and P&L)
    ii. Compute portfolio standard deviation (both return and P&L)
    iii. 1% is 2.326 times standard deviation (assume normality)
    iv. Include 0.95 decay
  c. Factor-model VaR 
    i. Run principle component and retrieve the first two factors (or till
    95% of the eigenvalues)
    ii. Locate 1% position.
HW2:EVT, EWMA (GARCH), and MC (note that this is only for parametric
      VaR and not applicable for historical VaR)
#############
 Use the results of Homework #1 above; and continue the following:
1. Add EVT to all VaR estimates (in doing so you would need Nu/N where Nu is
obtained by counting your histogram using the critical value i.e. 1.645*sigma Estimate the two parameters (and) in EVT (
2. Simulate a one-day distribution using the simulated factors (assuming Gaussian)
and coefficients from the model(computing means and var-cov’s of the selected factors)
3. Simulate two days of prices using EWMA (estimate EWMA using equation (10.3) on page 153)
HW3
############
1. Collect one year daily stock prices for 10 companies; Compute daily returns, and
then mean and standard deviation.
2. Collect (1) market cap, (2) current and (3) long-term liabilities of each firm.2
3. Run the model to solve for asset value and asset volatility (for each of the 10
firms).
4. Compare to the book value of each firm.
5. Report the one and two year default proabilities of each firm.
