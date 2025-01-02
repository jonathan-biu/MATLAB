function mat = d5seqmat(rows,cols)
% MATLAB course for biology students
% Class demonstration
% create a matrix of rowsXcols with 1,2,3,... along rows

% create a 1D array of numbers
mat = 1:rows*cols;
% reshape to get columns
mat = reshape(mat,cols,rows);
% transpose to get rows
mat = mat';
