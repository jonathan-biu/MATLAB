% clear workspace
clear
% set x as a range of 40 values between 0 and 10
x = linspace(0, 10, 40);
% set f as an anonymous function that takes two arguments
f = @(u, a) sqrt(u .^ 2 + a .^ 2);
% set y1 as the result of f applied to x and 2
y1 = f(x, 2);
% plot x and y1
plot(x, y1);
% calculate the mean of y1 as M
M = mean(y1);
% multiply M by 0.1 and set to A
A = M * 0.1;
% set z as the result of do_array_3 applied A, 0, and 20
z = do_array_3(A, 0, 20);
% add z and y1 and set to w
w = z + y1;
% plot x and w and allow additional plots to be added
hold on;
plot(x, w);
% set y2 as the result of f applied to x and 9
y2 = f(x, 9);
% plot x and y2
plot(x, y2);
% set t as the result of do_array_3 applied to 1.1,0.9,20
t = do_array_3(1.1, 0.9, 20);
% multiply t by y2 and set to v
v = t .* y2;
% plot x and v
plot(x, v);
