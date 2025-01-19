function [array] = ex5_1arrays (n)
    % This script performs the following operations:
    % 1. Creates an array A with values from 1 to n.
    % 2. Creates a matrix B with A in the first row and -A in the second row.
    % 3. Reshapes matrix B into a column vector C.
    % 4. Transposes the column vector C to create row vector D.
    % 5. Constructs a new array with D in the first row and the element-wise square of D in the second row.
    A = 1:n;
    B = [A; -A];
    C = reshape(B, n * 2, 1);
    D = transpose(C);
    array = [D; D .^ 2];
end
