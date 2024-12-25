function title_date = ex7_1date(title)
    date_str = date();
    date_str = strrep(date_str, '-', ' ');
    title_date = [title, ': ', date_str];
end
