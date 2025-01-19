function structure = ex9_1normal(array, dimension)
    % This script calculates the mean and standard deviation of an array along a specified dimension
    % and stores the results in a structure.
    %
    % Variables:
    %   array (numeric array): The input array for which the mean and standard deviation are calculated.
    %   dimension (integer): The dimension along which the mean and standard deviation are calculated.
    %   structure (struct): A structure with fields 'represent' and 'spread' to store the mean and standard deviation respectively.
    %
    % Fields of structure:
    %   represent (numeric): The mean of the input array along the specified dimension.
    %   spread (numeric): The standard deviation of the input array along the specified dimension.
    structure = struct('represent', 'spread');
    structure.represent = mean(array, dimension);
    structure.spread = std(array, 1, dimension);
end
