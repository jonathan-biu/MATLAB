% input data
clear
% define anon func
bacteriaNumber = @(time,n0,K,lamda) (n0 .* lamda .^ time) ./ (1 + (n0 .* ((lamda .^ time) - 1) ./ K)); % apply growth formula
%set maxTime == 10
maxTime = 10;
% set t as array of 51 obj between 0 and maxTime
t = linspace(0,maxTime,51);
% set vars for func
n0=1;
K=6;
lambda = 5;
% use anon func
pop1formula = bacteriaNumber(t,n0,K,lambda);
hold on
plot(t,pop1formula,"b-")
% set vars for 2nd calc
n0=1;
K=6;
lambda = 2;
% use anon func
pop2formula = bacteriaNumber(t,n0,K,lambda);
% set plot for growth
plot(t,pop2formula,"r--")
Nsteps = 0:maxTime;
pop1sim = ex4_2simulate(1,6,5);
plot(Nsteps,pop1sim,"k-.",Marker="o")
pop2sim = ex4_2simulate(1,6,2);
plot(Nsteps,pop2sim,"m-.",Marker="square")
% set legend
legend('\lambda=5 formula','\lambda=2 formula','\lambda=5 simulate','\lambda=2 simulate',Location='southeast')
title('Logistic Growth')
xlabel('Time Passed')
ylabel('Population')