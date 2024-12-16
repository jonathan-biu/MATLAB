% clear workspace
clear
% set x as array of 21 objects between 1 and 10
x = linspace(1, 10, 21);
% set anon func f == x * sqrt(x^2 + c) w/input x and c
f = @(x, c) (x .* sqrt(x .^ 2 + c));
% apply f to x and 100 and save as y1
y1 = f(x, 100);
% plot y1 over x
plot(x, y1);
% set z as do_array applied to  y1,4 and 10, add to plot
z = do_array(y1, 4, 10);
hold on
plot(x, z);
hold off
% apply f to x and 1 and save as y2 & add new fig
figure;
y2 = f(x, 100);
plot(x, y2);
% set t as do_array applied to  y2,5 and 16, add to plot
t = do_array(y2, 5, 6);
hold on
plot(x, t);
hold off
