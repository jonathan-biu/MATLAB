function title_date = ex7_1date(title)
    % This script retrieves the current date, replaces any hyphens with spaces,
    % and appends the formatted date string to a given title.
    %
    % Variables:
    %   date_str   - A string representing the current date in the format 'dd-mmm-yyyy'.
    %   title_date - A string that combines the given title with the formatted date string.
    date_str = date();
    date_str = strrep(date_str, '-', ' ');
    title_date = [title, ': ', date_str];
end
