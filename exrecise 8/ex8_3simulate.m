function [N_sim] = ex8_3simulate (n0, K, lambda)
    % This script simulates population growth over a number of generations using a specified growth function.
    %
    % The growth function is defined as:
    % next_step = @(nt, K, lambda) (nt .* lambda .^ (1 - (nt ./ K)));
    % where:
    %   - nt: current population size
    %   - K: carrying capacity of the environment
    %   - lambda: growth rate
    %
    % Parameters:
    %   Generations: The number of generations to simulate (set to 10).
    %   N_sim: A matrix to store the population size at each generation for each initial population size in n0.
    %          The first dimension represents the generation, and the second dimension represents different initial populations.
    %   n0: Initial population sizes (should be defined before running the script).
    %   K: Carrying capacity (should be defined before running the script).
    %   lambda: Growth rate (should be defined before running the script).
    %
    % The script initializes the population sizes for the first generation using the initial population sizes (n0).
    % It then iteratively calculates the population size for each subsequent generation using the growth function.
    % The results are stored in the N_sim matrix.
    next_step = @(nt, K, lambda) (nt .* lambda .^ (1 - (nt ./ K)));
    Generations = 10;
    N_sim = nan((Generations +1), length(n0));
    N_sim(1, :) = n0;
    N_sim(2, :) = next_step(N_sim(1, :), K, lambda);
    N_sim(3, :) = next_step(N_sim(2, :), K, lambda);
    N_sim(4, :) = next_step(N_sim(3, :), K, lambda);
    N_sim(5, :) = next_step(N_sim(4, :), K, lambda);
    N_sim(6, :) = next_step(N_sim(5, :), K, lambda);
    N_sim(7, :) = next_step(N_sim(6, :), K, lambda);
    N_sim(8, :) = next_step(N_sim(7, :), K, lambda);
    N_sim(9, :) = next_step(N_sim(8, :), K, lambda);
    N_sim(10, :) = next_step(N_sim(9, :), K, lambda);
    N_sim(11, :) = next_step(N_sim(10, :), K, lambda);
end
