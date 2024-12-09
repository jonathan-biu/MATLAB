clear
% set array A as a vector of even numbers between 0-20
A = 0:2:20;
% set a3 as a scalar == to A(3)
a3 = A(3);
% set A(11) = a3
A(11) = a3;
% save A(2) as the sum of A(2) and a3
A(2) = A(2) + a3;
% set array B as vector containing A 1-4
B = A(1:4);
% set array C as vector containing A 8-11
C = A(8:11);
% divide each element in C by corresponding B value
D = C ./ B;
% set A 1-3 == 0
A(1:3) = 0;
% delete A(4)
A(4) = [];