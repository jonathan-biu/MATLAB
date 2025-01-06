% clear workspace
clear
% set filename to turtles.xlsx
filename = "turtles.xlsx";
% load turtle data
turtlesData = readmatrix(filename);
% set worst_lx to the output of ex6_2turtles column 2
worst_lx = ex6_1nan(turtlesData(:, 2));
% set average_lx to the output of ex6_2turtles column 4
average_lx = ex6_1nan(turtlesData(:, 4));
% set best_lx to the output of ex6_2turtles column 6
best_lx = ex6_1nan(turtlesData(:, 6));
% save worst_lx, average_lx, and best_lx to ex6_2turtles.mat
% save("ex6_2turtles.mat", "worst_lx", "average_lx", "best_lx");
% all_lx = {worst_lx, average_lx, best_lx};
% read in the turtle data
turtles_cell = readcell(filename);
% save first row in headers
headers = turtles_cell(1, :);
% save first cell value as xHeader
xHeader = headers{1, 1};
% save the cells 2, 4, and 6 as yHeaders
% yHeaders = headers([2, 4, 6]);
% save S1 as struct w/ fields worst_lx, lxName, mx, mxName
S1 = struct('lx', worst_lx, 'lxName', turtles_cell{1, 2}, 'mx', turtlesData(1, 3), 'mxName', turtles_cell{1, 3});
% save S2 as struct w/ fields average_lx, lxName, mx, mxName
S2 = struct('lx', average_lx, 'lxName', turtles_cell{1, 4}, 'mx', turtlesData(1, 5), 'mxName', turtles_cell{1, 5});
% save S3 as struct w/ fields best_lx, lxName, mx, mxName
S3 = struct('lx', best_lx, 'lxName', turtles_cell{1, 6}, 'mx', turtlesData(1, 7), 'mxName', turtles_cell{1, 7});
% save S1, S2, and S3  as turtles_struct
turtles_struct = [S1, S2, S3];
