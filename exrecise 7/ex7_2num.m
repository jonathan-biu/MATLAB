function title_val = ex7_2num(T, value, r)
    % This script constructs a title string for a plot or display.
    % The title string is composed of several parts:
    % - T: A variable representing the title or label.
    % - equal: A string containing the equal sign (' = ').
    % - value: A numeric value that is converted to a string.
    % - open_bracket: A string containing an open bracket (' [').
    % - r: A numeric array that is converted to a string.
    % The final title string (title_val) is a concatenation of these parts in the format:
    % 'T = value [r]'
    equal = ' = ';
    value_str = num2str(value);
    open_bracket = ' [';
    vals_str = num2str(r);
    title_val = [T, equal, value_str, open_bracket, vals_str, ']'];
end
