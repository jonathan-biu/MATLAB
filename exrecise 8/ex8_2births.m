% clear workspace and memory
clear;
clc;
% load data
births = readmatrix('births.xls');
% save to var unscaled_births all columns except the first one
unscaled_births = births(:, 2:end);
% scale using ex8_1scale function across rows (2)
scaled_births = ex8_1scale(unscaled_births, 2);
% transpose the scaled data
trans_scaled_births = scaled_births';
% plot transposed data
hold on
plot(trans_scaled_births, Marker = '.', LineStyle = '--');
% calc mean and std of the scaled data across columns
mean_births = mean(scaled_births, 1);
std_births = std(scaled_births, 1);
errorbar(mean_births, std_births, 'k');
hold off
