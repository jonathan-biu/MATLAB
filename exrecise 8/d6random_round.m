function rounded = d6random_round(numbers)
% MATLAB course for biology students - class 6
% Class demonstration
% round to integer, statistically
% probability of rounding up is given by fractional part of number
intPart = floor(numbers); % whole part
fract = numbers - intPart; % fractional part
coin = rand(size(intPart)); 
roundUp = fract > coin;
rounded = intPart + roundUp; % treat logicals as numbers
% r = rand(sz);
% result = r<p;