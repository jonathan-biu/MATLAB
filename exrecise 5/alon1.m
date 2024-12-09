clear
%formula of bacteria num from ex1_2bacteria
days = 2;
divisionMinutes = 20;
bacteriaSize = 0.5e-6;
% unit conversion
minutes = days * 24 * 60;
bacteriaVolume = bacteriaSize ^ 3;
% calculate growth
generations = minutes / divisionMinutes;

logistic = @(t, N0, k, lamda) (N0 .* lamda .^ t) ./ (1 + (N0 .* (lamda .^ t - 1) ./ k));
maxTime = 10;
t = linspace(0, maxTime, 51);
hold on
N0 = 1;
k = 8;
lamda = 5;
pop1formula = logistic(t, N0, k, lamda);
plot (t, pop1formula, 'c-');
title 'pop1furmula';

hold off
