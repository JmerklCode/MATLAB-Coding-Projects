%############################################################################
% <Lab 6a>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: Create a function to model 2000 random numbers with mean 7
% and standard deviation 10.
% Due date: 2020/03/06
%
% Author: Jake Merkl
% Input: NONE
% Output: A graph of random numbers
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___Jake Merkl_______
%############################################################################

function Lab6A_MerklJake()

mu = 7;         %Declare variables
sigma = 10;
x = randn(1,2000).*sigma + mu;  %Take random numbers and make them into prabability graph
disp('Standard Deviation is: ') %Graph probability
disp(std(x))                    %Graphing conventions
disp('Mean is: ')
disp(mean(x))
end


