function array_out = ex3_2dup(array_in)
% Set array_out to be length 2n where n is the length of the input array
n = length(array_in);
% Initialize array_out with correct dimensions
array_out = NaN(1, 2*n); 

% Set odd indices to the input array values
array_out(1:2:end) = array_in;

% Set even indices to the input array values
array_out(2:2:end) = array_in;
end
