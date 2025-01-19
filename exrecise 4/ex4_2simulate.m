function [N_sim] = ex4_2simulate (n0, K, lambda)
    % This script simulates the population growth over a number of generations
    % using a specified growth function.
    %
    % Variables:
    %   next_step - A function handle that calculates the next population size
    %               based on the current population size (nt), carrying capacity (K),
    %               and growth rate (lambda).
    %   Generations - The number of generations to simulate.
    %   N_sim - A vector to store the population size at each generation.
    %   n0 - Initial population size (this variable should be defined before running the script).
    %   K - Carrying capacity of the environment (this variable should be defined before running the script).
    %   lambda - Growth rate (this variable should be defined before running the script).
    %
    % The script initializes the population size vector (N_sim) with NaN values,
    % sets the initial population size, and then iteratively calculates the population
    % size for each subsequent generation using the next_step function.
    next_step = @(nt, K, lambda) (nt * lambda .^ (1 - (nt ./ K)));
    Generations = 10;
    N_sim = nan(1, (Generations +1));
    N_sim(1) = n0;
    N_sim(2) = next_step(N_sim(1), K, lambda);
    N_sim(3) = next_step(N_sim(2), K, lambda);
    N_sim(4) = next_step(N_sim(3), K, lambda);
    N_sim(5) = next_step(N_sim(4), K, lambda);
    N_sim(6) = next_step(N_sim(5), K, lambda);
    N_sim(7) = next_step(N_sim(6), K, lambda);
    N_sim(8) = next_step(N_sim(7), K, lambda);
    N_sim(9) = next_step(N_sim(8), K, lambda);
    N_sim(10) = next_step(N_sim(9), K, lambda);
    N_sim(11) = next_step(N_sim(10), K, lambda);
end
