function [N_sim] = ex8_4simulate (n0, K, lambda)
    % This script simulates population dynamics over a number of generations.
    %
    % The function `next_step` calculates the next population size based on the
    % current population size `nt`, carrying capacity `K`, and growth rate `lambda`.
    %
    % Parameters:
    % - Generations: The number of generations to simulate.
    % - N_sim: A matrix to store the population size at each generation for each initial population size.
    % - n0: Initial population sizes (assumed to be defined elsewhere in the script).
    % - K: Carrying capacity (assumed to be defined elsewhere in the script).
    % - lambda: Growth rate (assumed to be defined elsewhere in the script).
    %
    % The script initializes the first row of `N_sim` with the initial population sizes `n0`.
    % It then iteratively calculates the population size for each subsequent generation using
    % the `next_step` function and rounds the result using the `d6random_round` function.
    % The results are stored in the corresponding rows of `N_sim`.
    next_step = @(nt, K, lambda) (nt .* lambda .^ (1 - (nt ./ K)));
    Generations = 10;
    N_sim = nan((Generations +1), length(n0));
    N_sim(1, :) = n0;
    N_sim(2, :) = d6random_round(next_step(N_sim(1, :), K, lambda));
    N_sim(3, :) = d6random_round(next_step(N_sim(2, :), K, lambda));
    N_sim(4, :) = d6random_round(next_step(N_sim(3, :), K, lambda));
    N_sim(5, :) = d6random_round(next_step(N_sim(4, :), K, lambda));
    N_sim(6, :) = d6random_round(next_step(N_sim(5, :), K, lambda));
    N_sim(7, :) = d6random_round(next_step(N_sim(6, :), K, lambda));
    N_sim(8, :) = d6random_round(next_step(N_sim(7, :), K, lambda));
    N_sim(9, :) = d6random_round(next_step(N_sim(8, :), K, lambda));
    N_sim(10, :) = d6random_round(next_step(N_sim(9, :), K, lambda));
    N_sim(11, :) = d6random_round(next_step(N_sim(10, :), K, lambda));
end
