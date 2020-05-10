%############################################################################
% <Lab1a>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: To prompt an input of an integer and make the program return
% if the value is even or odd
% 
% Due date: 2019/01/17
%
% Author: Jake Merkl
% Input: Some integer
% Output: If it's positive
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___Jake Merkl_______
%############################################################################

function Lab1b_MerklJake(A)
fprintf("The maximum in this array is: \n")
maxA = max(max(A));                               %Compute Actual Max of array
fprintf("%2d", maxA)                              %Return Value
[row, col] = find(maxA == A)                      %Displays Column and Row
row_index = find(maxA == A);                      %Store Row into Variable
col_index = find(maxA == A);                      %Store Column into Variable
fprintf("Max(A) is A(%2d,%2d) = %5.4f", row_index, col_index, maxA) %Output Results


end
