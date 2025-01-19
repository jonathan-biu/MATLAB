function array_out = ex3_2dup(array_in)
    % This script duplicates each element in the input array and stores the result in a new array.
    %
    % Input:
    %   array_in - A 1D array of numerical values.
    %
    % Output:
    %   array_out - A 1D array where each element from the input array is duplicated.
    %               The length of array_out is twice the length of array_in.
    %
    % Example:
    %   array_in = [1, 2, 3];
    %   array_out = [1, 1, 2, 2, 3, 3];
    %
    % Steps:
    %   1. Determine the length of the input array.
    %   2. Initialize an output array of NaN values with twice the length of the input array.
    %   3. Assign the input array values to the odd indices of the output array.
    %   4. Assign the input array values to the even indices of the output array.
    n = length(array_in);
    array_out = NaN(1, 2 * n);
    array_out(1:2:end) = array_in;
    array_out(2:2:end) = array_in;
end
