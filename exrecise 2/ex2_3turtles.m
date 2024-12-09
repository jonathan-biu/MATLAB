% clear memory
clear
clc
% load turtles.mat
load turtles.mat
% save dx
dx = -diff(best_lx);
% save best_lx w/out last
best_lx_w_out_last = best_lx(1:45);
% save p as dx  / best_lx w/out last
p = dx./best_lx_w_out_last;
% set years 
years = 1:1:45;
%plot p over years
plot(years,p)
% get p 6-45
p6_45 = p(6:45);
% get mean
mean_p = mean(p6_45);
% get st_dev
std_p = std(p6_45);
