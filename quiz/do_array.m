function [row_oddA,row_evenA] = do_array(row,a)
row_oddA = nan(1,length(row));
row_evenA = nan(1,length(row));
evens = row(2:2:end);
odds = row(1:2:end);
row_oddA(2:2:end) = evens;
row_oddA(1:2:end) = odds.*a;
row_evenA(1:2:end) = odds;
row_evenA(2:2:end) = evens.*a;
end