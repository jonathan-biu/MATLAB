% clear workspace
clear
% set x as a range of 51 values between 0 and 10
x = linspace(0, 10, 51);
% set y as x/(x^2 + 9)
y = x ./ (x .^ 2 + 9);
% plot x and y
plot(x, y);
% set zODD,zEVEN as the result of do_array applied to y and 0.85
[zODD, zEVEN] = do_array(y, 0.85);
% set tOdd as the result of do_array applied to zEVEN and 1.25
tOdd = do_array(zEVEN, 1.25);
% plot x and tOdd
hold on;
plot(x, tOdd);
