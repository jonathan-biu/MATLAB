function [row_oddA, row_evenA] = do_array(row, a)
    row_oddA = row;
    p1 = row(1:2:end) * a;
    row_oddA(1:2:end) = p1;
    row_evenA = row;
    p2 = row(2:2:end) * a;
    row_evenA(2:2:end) = p2;
end
