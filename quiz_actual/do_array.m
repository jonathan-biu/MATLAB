function outputarray = do_array(row, n, a)
    outputarray = row;
    p = outputarray(n:n:end) + a;
    outputarray(n:n:end) = p;

end
