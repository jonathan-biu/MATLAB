function structure = ex9_1normal(array, dimension)
    structure = struct('represent', 'spread');
    structure.represent = mean(array, dimension);
    structure.spread = std(array, 1, dimension);
end
