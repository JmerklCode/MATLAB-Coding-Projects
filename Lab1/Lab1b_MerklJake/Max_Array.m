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

function Max_Array(A)
fprintf("The maximum in this array is: \n")
x = max(max(A));                               %Compute Actual Max of array
fprintf("%2d", x)                              %Return Value
[row=find(A==x);
%fprintf("\nRow: %2d", b)


end
