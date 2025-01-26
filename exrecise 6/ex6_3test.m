% clear workspace
clear
% set a row vector of 101 elements from 0 to 8
x = linspace(0, 8, 101);
% set anon func logisitc
Logistic = @(time, n0, K, lambda) (n0 .* lambda .^ time) ./ (1 + (n0 .* ((lambda .^ time) - 1) ./ K));
% simulate bacteria growth w/ lambda = 6, K = 20, n0 = 2 and time = x
pop1 = Logistic(x, 2, 20, 6);
% use randn to create an array of 101 random numbers w/ normal distribution w/ width 2 around 0
noise = 2 * randn(1, length(x));
% add noise to pop1
ynoise = pop1 + noise;
% plot x vs ynoise as scatter plot w/ blue dots
plot(x, ynoise, 'b.', LineStyle = 'none');
% calculate the mean of ynoise
mean_ynoise = mean(ynoise);
% calculate the standard deviation of ynoise
std_ynoise = std(ynoise);
% apply ex6_3asympt to ynoise, mean_ynoise, and std_ynoise
[ynoise_const, ynoise_noise, index_ynoise] = ex6_3asympt(ynoise, mean_ynoise, std_ynoise);
% plot asymptote as green line
line_x1 = [x(index_ynoise), x(end)];
line_y1 = [ynoise_const, ynoise_const];
hold on
plot(line_x1, line_y1, 'g-');
% apply ex6_3asympt to ynoise, ynoise_const, and ynoise_noise
[ynoise_const2, ynoise_noise2, index_ynoise2] = ex6_3asympt(ynoise, ynoise_const, ynoise_noise);
% plot asymptote as black line
line_x2 = [x(index_ynoise2), x(end)];
line_y2 = [ynoise_const2, ynoise_const2];
plot(line_x2, line_y2, 'k-');
hold off
