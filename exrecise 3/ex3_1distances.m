% clear workspace
clear
% declare anon func to calc distances between point and array of points
% (x0,y0 and x,y arrays)
calc_dist = @ (x0,y0,x,y) (sqrt((x - x0) .^ 2 + (y - y0) .^ 2));
% load coordinates in code
load coordinates.mat
% transform x,y 1-3 to arrays
x = [x1, x2, x3];
y = [y1, y2, y3];
% set x,y 0 point
x0 = 10;
y0 = 3;
% calculate distance between points x,y 0  and x,y arrays
R = calc_dist(x0,y0,x,y);
R12 = calc_dist(x1,y1,x2,y2);
R23 = calc_dist(x2,y2,x3,y3);
R13 = calc_dist(x1,y1,x3,y3);
% save R as distances.mat
distances = R;