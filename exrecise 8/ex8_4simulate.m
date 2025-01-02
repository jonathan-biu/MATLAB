function [N_sim] = ex8_4simulate (n0, K, lambda)
    % set anon func
    next_step = @(nt, K, lambda) (nt .* lambda .^ (1 - (nt ./ K)));
    % set Generations var
    Generations = 10;
    N_sim = nan((Generations +1), length(n0));
    N_sim(1, :) = d6random_round(n0);
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
