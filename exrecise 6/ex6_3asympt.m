function [approx_const, approx_noise, index_stable] = ex6_3asympt(array, est_const, est_noise)
    dist_array = abs(array - est_const);
    index_stable = find(dist_array < est_noise, 1, 'first');
    approx_const = mean(array(index_stable:end));
    approx_noise = std(array(index_stable:end));

end
