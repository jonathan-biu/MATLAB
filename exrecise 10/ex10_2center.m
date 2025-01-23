% MATLAB course for biology students
% Class demonstration
% d5protein.m show protein packbone, where coordinates are in columns of 2D array
% clear workspace
clear;
clc;
load CALMODULIN2D % get data
% generate backbone
xyz = d5unite(crdN, crdCA, crdC); % one 2D array of 3 columns
% save mean of each column xyz as center
Center = mean(xyz, 1);
hold off
plot3(xyz(:, 1), xyz(:, 2), xyz(:, 3), 'k')
% calc dist from center for N
distN = ex10_2distances(Center, crdN);
distCA = ex10_2distances(Center, crdCA);
distC = ex10_2distances(Center, crdC);
% plot each kind of atom in different colors
hold on
scatter3(crdN(:, 1), crdN(:, 2), crdN(:, 3), 20, distN, "o")
scatter3(crdCA(:, 1), crdCA(:, 2), crdCA(:, 3), 20, distCA, "square")
scatter3(crdC(:, 1), crdC(:, 2), crdC(:, 3), 20, distC,"diamond")
colorbar;
colormap('copper')
axis tight
% annotation
legend('backbone', 'N', 'Ca', 'C', 'location', 'northeast')
xlabel('x')
ylabel('y')
zlabel('z')
title('calmodulin')
