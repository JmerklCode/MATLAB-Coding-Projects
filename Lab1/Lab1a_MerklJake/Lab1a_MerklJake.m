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

function Lab1a_MerklJake
x = input ("Please enter a number:\n");
if rem(x,2)>0
    disp("Your number is odd")    %Case of Odd
else
    disp("Your number is even")   %Case of Even
end
end

        
        
        
        
        
        
        
        
        
        
        
        
