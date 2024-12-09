
function [death_array,mean_mortality,std_mortality] = ex3_3mortality(prob_array,year_stable)
% this function returns an array mean and standard deviation of likly
% mortality
dx = -diff(prob_array);
% save best_lx w/out last
prob_array_w_out_last = prob_array(1:end-1);
% save p as dx  / best_lx w/out last
death_array = dx./prob_array_w_out_last;
% get p stable
death_array_stable = death_array(year_stable:end);
% get mean
mean_mortality = mean(death_array_stable);
% get st_dev
std_mortality = std(death_array_stable);
end