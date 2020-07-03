#For a Normal random variable  with  = 3 and =0.6, 
#find: a. {Y ??? 2} 
p1=pnorm(1,3,0.6)+pnorm(0,3,0.6)+pnorm(2,3,0.6)
r=1-p1
r

#find: a. {Y => 4} 
p2=pnorm(0,3,0.6)+pnorm(1,3,0.6)+pnorm(2,3,0.6)+pnorm(3,3,0.6)+pnorm(4,3,0.6)
p2

#P{1 ??? Y ??? 5}
p3=pnorm(1,3,0.6)+pnorm(2,3,0.6)+pnorm(3,3,0.6)+pnorm(4,3,0.6)+pnorm(5,3,0.6)
p3
--------------------------------------------------------------------------------------------------
#Q2. Find the 90th, 95th and 99th percentile of a Normal distribution when  u= 20 and sd=4. 
q1=qnorm(0.90,20,4) #for 90th percentile
q1

q2=qnorm(0.95,20,4) #for 95th percentile
q2

q3=qnorm(0.99,20,4) #for 99th percentile
q3
--------------------------------------------------------------------------------------------------
#Q3. 
{
p=rnorm(10000,10,4)
p
h=hist(p) #histogram of sample
h
med=median(p) #median of sample
med     
mod=mode(p) #mode of sample
mod
}
-----------------------------------------------------------------------------------------------------
Normal Distribution:-
  {
  mu=100 
  sigma=10 
  n=30 
  xbar=rep(0,1000) 
  for (i in 1:1000) 
  {  
    xbar[i]=mean(rnorm(n,mean=mu,sd=sigma))  
  } 
  hist(xbar,prob=TRUE) 
  curve(dnorm(x,mean=mu,sd=sigma/sqrt(n)),70,130,add=TRUE,lwd=2,col="red") 
  }
-----------------------------------------------------------------------------------------------------
#Poisson Distribution
  {
  lambda=9 
  n=40 
  ybar=rep(0,1000) 
  for (i in 1:1000) 
  {  
    ybar[i]=mean(rpois(n,lambda))  
  } 
  hist(ybar,prob=TRUE,breaks=12, xlim=c(6,12), ylim=c(0,1)) 
  curve(dnorm(x,mean=lambda,sd=sqrt(lambda)/sqrt(n)),6,12,add=TRUE,lwd=2,col="red")  
  
  }
--------------------------------------------------------------------------------------------------------
  #Uniform Distribution:-
{
  a=2 
  b=10 
  n=80 
  tbar=rep(0,2000) 
  for (i in 1:2000) 
  {  
    tbar[i]=mean(runif(n,a,b))  
  } 
  hist(tbar,prob=TRUE,breaks=20, xlim=c(4,8), ylim=c(0,1.6)) 
  curve(dnorm(x,mean=(a+b)/2,sd=(b-a)/sqrt(12*n)),4,8,add=TRUE,lwd=2,col="red") 
}