% clear data
clear
clc
% read births matrix
births_matrix = readmatrix("births.xls") ;
% set first col as YEARS
years = births_matrix(:,1);
% set all other Cols as BIRTHS
births = births_matrix(:,2:end);
% transpose births
births_cols = transpose(births);
% set births to 1d array
[r,c] = size(births_cols);
birth_sequence = reshape(births_cols,r*c,1);
% get number of months
months_indx = 1:length(birth_sequence);
% transform months to years
months_indx = (months_indx - 1)./12;
% transform amount of years to actua  years
month_sequence  = years(1) + months_indx;
% plot births by years
plot(month_sequence, birth_sequence,"k-")
xlim([month_sequence(1),month_sequence(end)])
xlabel("time of birth (year month)")
ylabel("number of births")