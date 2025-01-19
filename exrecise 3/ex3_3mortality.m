function [death_array, mean_mortality, std_mortality] = ex3_3mortality(prob_array, year_stable)
    % This script calculates the mortality rate from a given probability array.
    %
    % Variables:
    % prob_array - Array of probabilities.
    % dx - Difference between consecutive elements of prob_array.
    % prob_array_w_out_last - prob_array excluding the last element.
    % death_array - Mortality rate calculated as the ratio of dx to prob_array_w_out_last.
    % death_array_stable - Subset of death_array starting from year_stable to the end.
    % mean_mortality - Mean of the stable mortality rates.
    % std_mortality - Standard deviation of the stable mortality rates.
    dx = -diff(prob_array);
    prob_array_w_out_last = prob_array(1:end - 1);
    death_array = dx ./ prob_array_w_out_last;
    death_array_stable = death_array(year_stable:end);
    mean_mortality = mean(death_array_stable);
    std_mortality = std(death_array_stable);
end
