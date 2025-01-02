% clear workspace and memory
clear;
clc;
% set data
k = 6;
lambda_values = [1.2, 2, 3, 6];
n0 = ones(1, length(lambda_values));
% simulate population growth
pop_sim = ex8_3simulate(n0, k, lambda_values);
% set Nsteps array
Nsteps = 0:10;
% plot population growth by Nsteps
plot(Nsteps, pop_sim, Marker = 'o', LineStyle = '--');
% set legend
xlabel('steps');
ylabel('population');
% set lambda as cell array as \lambda=lambda_values(n)
lambda = {'\lambda=1.2', '\lambda=2', '\lambda=3', '\lambda=6'};
legend(lambda, "Location", "best");
