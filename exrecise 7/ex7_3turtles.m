% clear workspace
clear
% set filename to turtles.xlsx
filename = "turtles.xlsx";
% load turtle data
turtles_nan = readmatrix(filename);
% set worst_lx to the output of ex6_2turtles column 2
worst_lx = ex6_1nan(turtles_nan(:, 2));
% set average_lx to the output of ex6_2turtles column 4
average_lx = ex6_1nan(turtles_nan(:, 4));
% set best_lx to the output of ex6_2turtles column 6
best_lx = ex6_1nan(turtles_nan(:, 6));
% save worst_lx, average_lx, and best_lx to ex6_2turtles.mat
% save("ex6_2turtles.mat", "worst_lx", "average_lx", "best_lx");
all_lx = {worst_lx, average_lx, best_lx};
% read in the turtle data
turtles_cell = readcell(filename);
% save first row in headers
headers = turtles_cell(1, :);
% save first cell as xHeader
xHeader = headers(1);
% save the cells 2, 4, and 6 as yHeaders
yHeaders = headers([2, 4, 6]);
