% clear workspace
clear
% load turtle data
turtles_nan = readmatrix("turtles.xlsx");
% set worst_lx to the output of ex6_2turtles column 2
worst_lx = ex6_1nan(turtles_nan(:, 2));
% set average_lx to the output of ex6_2turtles column 4
average_lx = ex6_1nan(turtles_nan(:, 4));
% set best_lx to the output of ex6_2turtles column 6
best_lx = ex6_1nan(turtles_nan(:, 6));
% save worst_lx, average_lx, and best_lx to ex6_2turtles.mat
save("ex6_2turtles.mat", "worst_lx", "average_lx", "best_lx");
