function array_out = ex8_1scale(array_in, scalar)
    minimum = min(array_in, [], scalar);
    maximum = max(array_in, [], scalar);
    diff = maximum - minimum;
    array_diff = array_in - minimum;
    array_out = array_diff ./ diff;
end
