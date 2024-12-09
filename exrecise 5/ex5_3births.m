% clear data
clear
clc
% read births matrix
births_matrix = readmatrix("births.xls") ;
% set first col as YEARS
years = births_matrix(:,1);
% set all other Cols as BIRTHS
births = births_matrix(:,2:end);
% create 2 plots

% set plot 1
subplot(1,2,1)
plot(years,births)
xlabel("year of birth")
ylabel("number of births")
% set plot 2
subplot(1,2,2)
hold on

births1 = births(1,:);
plot(births1,"g--",Marker="diamond")

births11 = births(11,:);
plot(births11,"b--",Marker="o")

births21 = births(21,:);
plot(births21,"r--",Marker="square")

births31 = births(31,:);
plot(births31,"k--",Marker="x")

xlabel("month")
ylabel("number of births")

hold off

