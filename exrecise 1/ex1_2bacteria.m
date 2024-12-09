% MATLAB course for biology students
% Class demonstration
% d1bacteria.m calculate barteria growth
% input data
clear
K = 10 ^ 13;
days = 2;
divisionMinutes = 20;
bacteriaSize = 0.5e-6;
n0 = 1;
lamda = 2;
% unit conversion
minutes = days * 24 * 60;
bacteriaVolume = bacteriaSize ^ 3;
% calculate growth
generations = minutes / divisionMinutes; % number of steps
bacteriaNumber = (n0 * lamda ^ generations) / (1 + (n0 * ((lamda ^ generations) - 1) / K)); % apply growth formula
totalVolume = bacteriaNumber * bacteriaVolume; % total volume of organisms
% convert to Km3
TwoDayCm3 = totalVolume * 100 ^ 3;
% earth volume
% earthKm3 = 4 * pi / 3 * 6370 ^ 3
days = 0.5;
divisionMinutes = 20;
bacteriaSize = 0.5e-6;
n0 = 1;
lamda = 2;
% unit conversion
minutes = days * 24 * 60;
bacteriaVolume = bacteriaSize ^ 3;
% calculate growth
generations = minutes / divisionMinutes; % number of steps
bacteriaNumber = (n0 * lamda ^ generations) / (1 + (n0 * ((lamda ^ generations) - 1) / K)); % apply growth formula
totalVolume = bacteriaNumber * bacteriaVolume; % total volume of organisms
HalfDayCm3 = totalVolume * 100 ^ 3;
