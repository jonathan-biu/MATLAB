% clear workspace
clear
% load coordinates in code
load coordinates.mat
% as values are squared order is irrelevant
% calculate distance between points 1 and 2
R12 = sqrt((x1 - x2) ^ 2 + (y1 - y2) ^ 2);
% calculate distance between points 2 and 3
R23 = sqrt((x2 - x3) ^ 2 + (y2 - y3) ^ 2);
% calculate distance between points 1 and 3
R13 = sqrt((x1 - x3) ^ 2 + (y1 - y3) ^ 2);
save distances.mat
