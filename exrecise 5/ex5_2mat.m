function [array_and_rows] = ex5_2mat (array)
lastrow = array(end,:);
array_and_rows = [array;lastrow];
lastcol = array_and_rows(:,end);
array_and_rows = [array_and_rows,lastcol];
end