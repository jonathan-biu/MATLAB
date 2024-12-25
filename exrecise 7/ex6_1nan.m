function no_NaN_array = ex6_1nan(array)
    is_nan = isnan(array);
    is_nan = is_nan == false;
    no_NaN_array = array(is_nan);
end
