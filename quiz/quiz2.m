% clear workspace
clear
% set x as a range of 41 values between 0 and 10
x = linspace(0, 10, 41);
% set f as an anonymous function that takes two arguments
f = @(u, a) sqrt(u .^ 2 + a .^ 2);
% set y as the result of f applied to x and 10
y = f(x, 10);
% plot x and y and allow additional plots to be added
hold on
plot(x, y);
% set z as the result of do_array_2 applied to y
z = do_array_2(y);
% plot x and z
plot(x, z);
% set d as the result of f applied to x and 5
d = f(x, 5);
% set c as a 41 element array of NaN
c = nan(1, 41);
% set the first 21 elements of c to 21
c(1:21) = 21;
% set the last 20 elements of c to 41
c(22:end) = 41;
% set t as the sum of c and d
t = c + d;
% plot x and t
plot(x, t)
% set w as the result of do_array_2 applied to t
w = do_array_2(t);
% plot x and w
plot(x, w)
