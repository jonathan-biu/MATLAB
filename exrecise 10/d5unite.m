function D = d5unite(A,B,C)
% MATLAB course for biology students - class 5
% Class demonstration
% d5unite(A,B,C) unite rows from arrays: A1,B1,C1,A2,B2,C2,....
len = 3*size(A,1); % 3 atoms from each amino acid
D = nan(len,3); % 3 coordinates for x,y,z
% assign complete rows
D(1:3:end,:) = A;
D(2:3:end,:) = B;
D(3:3:end,:) = C;
