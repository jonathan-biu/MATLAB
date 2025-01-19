function [approx_const, approx_noise, index_stable] = ex6_3asympt(array, est_const, est_noise)
    % This script calculates an approximate constant and noise level from an array.
    %
    % dist_array: Absolute differences between each element in the array and the estimated constant.
    % index_stable: The index of the first element in dist_array that is less than the estimated noise.
    % approx_const: The mean value of the array elements starting from index_stable to the end.
    % approx_noise: The standard deviation of the array elements starting from index_stable to the end.
    dist_array = abs(array - est_const);
    index_stable = find(dist_array < est_noise, 1, 'first');
    approx_const = mean(array(index_stable:end));
    approx_noise = std(array(index_stable:end));

end
