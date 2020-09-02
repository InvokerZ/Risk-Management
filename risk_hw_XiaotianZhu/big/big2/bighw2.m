%%%using the 5 year AMZN stock's price data
%%problem1 estimate beta ks
%first import the AMZN csv file as AMZN

mypdf = @(x,beta,ks)(1/beta)*(1+ks*x/beta)^(-1/(ks-1))
Mean = mean(AMZN(:,3))
Std = std(AMZN(:,3))
mu = Mean - 1.645*Std
in1 = find(AMZN(:,3)<mu)
data = AMZN(in1)
[paramhat,paramint]=mle(data,'pdf',mypdf,'start',[.1,.5])
betahat = paramhat(1)
kshat = paramhat(2)
%%problem2 simulate one day distribution
x1 = Mean - 1.645*Std:0.001:Mean + 1.645*Std
simulation1 = normpdf(x1,Mean,Std)
x2 = -0.1:0.001:Mean - 1.645*Std
simulation2 = (1/beta_hat)*(1+ks_hat*x2/beta_hat)^(-1/(ks_hat-1))
x = [x1;x2]
simulation = [simulation1;simulation2]
plot(x,simulation)
%%problem3 simulate 2 days price
lambda = 0.965
sigma2_1 = lambda*Std^2+(1-lambda)*normrnd(0,1/sqrt(251))
sigma2_2 = lambda*sigma2_1^2+(1-lambda)*normrnd(0,1/sqrt(251))
n = length(AMZN)
price = AMZN(n,2)+normrnd(0,sqrt(sigma2_1))+normrnd(0,sqrt(sigma2_2))