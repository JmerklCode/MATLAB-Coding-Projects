function Lab5D_MerklJake
A = [4,3,1;3,7,-1;1,-1,9];                              %Declaring matricies from Q1 j)
B = [1,-1;4,7;9,5];
disp("Row Reduced Echelon Form of these two matrixies: ")
disp(rref([A, B]))              %Row reduced echelon form displayed of these two matricies

if(rank(A)==size(A))            %If there are no zero rows
    if(rref(A, B)==eye(size(A)))%To check if there is a trivial solution (just to be safe)
    disp("A trivial solution exists!")
    disp("The trivial solution is: ")
    disp(A\B)                       %The solution
    end
else
    if(rank(A)<size(A))             %If there are zero rows display error message
    disp("A trivial solution does not exist")
    disp("Please make sure the matricies are of form rank of A is less than size of A")
    disp("and there are no zero rows in the row reduced echelon form of the two matricies")
    end
end

end
