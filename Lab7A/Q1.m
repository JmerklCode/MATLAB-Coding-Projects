function Q1(A, lambda)
[numRows,numCols] = size(A);
rref(A-lambda*eye(numRows))
end