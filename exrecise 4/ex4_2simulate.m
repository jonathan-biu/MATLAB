function [N_sim] = ex4_2simulate (n0,K,lambda) 
% set anon func
next_step = @(nt,K,lambda) (nt*lambda.^(1-(nt./K)));
% set Generations var
Generations= 10;
N_sim = nan(1,(Generations +1));
N_sim(1) = n0;
N_sim(2) = next_step(N_sim(1),K,lambda);
N_sim(3) = next_step(N_sim(2),K,lambda);
N_sim(4) = next_step(N_sim(3),K,lambda);
N_sim(5) = next_step(N_sim(4),K,lambda);
N_sim(6) = next_step(N_sim(5),K,lambda);
N_sim(7) = next_step(N_sim(6),K,lambda);
N_sim(8) = next_step(N_sim(7),K,lambda);
N_sim(9) = next_step(N_sim(8),K,lambda);
N_sim(10) = next_step(N_sim(9),K,lambda);
N_sim(11) = next_step(N_sim(10),K,lambda);
end