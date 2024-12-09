% clear memory
clear
clc
% load turtles.mat
load turtles.mat
% ex3_3mortality func setteing array to best_lx and year to 2
[best_mort, best_mean, best_std] = ex3_3mortality(best_lx, 2);
% get a series from 1 to length of best_mort
best_years = 1:length(best_mort);
hold on
%add best to plot
plot(best_years, best_mort)
% ex3_3mortality func setteing array to average_lx and year to 2
[average_mort, average_mean, average_std] = ex3_3mortality(average_lx, 2);
% get a series from 1 to length of average_mort
average_years = 1:length(average_mort);
%add average to plot
plot(average_years, average_mort)
% ex3_3mortality func setteing array to worst_lx and year to 2
[worst_mort, worst_mean, worst_std] = ex3_3mortality(worst_lx, 2);
% get a series from 1 to length of worst_mort
worst_years = 1:length(worst_mort);
%add worst to plot
plot(worst_years, worst_mort)
