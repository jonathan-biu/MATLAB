function no_NaN_array = ex6_1nan(array)
    % This script removes NaN values from an array.
    %
    % Variables:
    %   array - The input array that may contain NaN values.
    %   is_nan - A logical array where true indicates the presence of NaN in the corresponding position of 'array'.
    %   no_NaN_array - The resulting array after removing all NaN values from 'array'.
    %
    % Steps:
    %   1. Identify NaN values in the input array using the isnan function.
    %   2. Create a logical array where true indicates non-NaN values.
    %   3. Use logical indexing to create a new array that contains only the non-NaN values.
    is_nan = isnan(array);
    is_nan = is_nan == false;
    no_NaN_array = array(is_nan);
end
