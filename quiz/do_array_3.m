function array = do_array_3(a, b, n)
    array = nan(1, 2 * n);
    p1 = 1:2:2 * n;
    p2 = 2:2:2 * n;
    array(p1) = a;
    array(p2) = b;
end
