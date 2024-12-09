function [array] = ex5_1arrays (n)
A = 1:n;
B =[A;-A]; 

C = reshape(B,n*2,1);
D = transpose(C);
array = [D;D.^2];
end