% clear workspace
clear
% load coordinates in code
load coordinates.mat
% transform x,y 1-3 to arrays
x = [x1, x2, x3];
y = [y1, y2, y3];
% set x,y 0 point
x0 = 10;
y0 = 3;
% calculate distance between points x,y 0  and x,y arrays
R = sqrt((x - x0) .^ 2 + (y - y0) .^ 2);
% save R as distances.mat
distances = R