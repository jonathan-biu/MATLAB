% clear workspace
clear;
clc;
% read birth data into cell array
filename = "births.xls";
births_cell = readcell(filename);
% save first cell value as yearHeader
yearHeader = births_cell{1, 1};
% save all cells in first row except the first as monthNames
monthNames = births_cell(1, 2:end);
% save all cells in first column except the first as a regular array called years
years = cell2mat(births_cell(2:end, 1));
% save month_nums
month_nums = 1:12;
% save birth_data as a regular array
birth_data = cell2mat(births_cell(2:end, 2:end));
% save toShow as ex5_2mat as applied to birth_data
toShow = ex5_2mat(birth_data);
% add month(end)+1 to month_nums
month_nums = [month_nums, month_nums(end) + 1];
% add years(end)+1 to years
years = [years; years(end) + 1];
