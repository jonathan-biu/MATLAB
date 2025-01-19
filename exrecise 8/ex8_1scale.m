function array_out = ex8_1scale(array_in, scalar)
    % This script scales the input array to the range [0, 1].
    %
    % Inputs:
    %   array_in - The input array to be scaled.
    %   scalar - The dimension along which to operate.
    %
    % Outputs:
    %   array_out - The scaled array with values in the range [0, 1].
    %
    % Steps:
    %   1. Calculate the minimum value of the input array along the specified dimension.
    %   2. Calculate the maximum value of the input array along the specified dimension.
    %   3. Compute the difference between the maximum and minimum values.
    %   4. Subtract the minimum value from each element of the input array.
    %   5. Divide the result by the difference to scale the values to the range [0, 1].
    minimum = min(array_in, [], scalar);
    maximum = max(array_in, [], scalar);
    diff = maximum - minimum;
    array_diff = array_in - minimum;
    array_out = array_diff ./ diff;
end
