function title_val = ex7_2num(T, value, r)
    equal = ' = ';
    value_str = num2str(value);
    open_bracket = ' [';
    vals_str = num2str(r);
    title_val = [T, equal, value_str, open_bracket, vals_str, ']'];
end
