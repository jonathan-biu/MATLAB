function [array_and_rows] = ex5_2mat (array)
    % This script performs the following operations on a given array:
    % 1. Extracts the last row of the array and appends it to the bottom of the array.
    % 2. Extracts the last column of the updated array and appends it to the right side of the array.
    %
    % Variables:
    % - lastrow: The last row of the original array.
    % - array_and_rows: The array after appending the last row and last column.
    % - lastcol: The last column of the array after appending the last row.
    lastrow = array(end, :);
    array_and_rows = [array; lastrow];
    lastcol = array_and_rows(:, end);
    array_and_rows = [array_and_rows, lastcol];
end
