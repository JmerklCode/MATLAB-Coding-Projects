%############################################################################
% Lab 2b
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: Find stats on a given matrix
% Due date: 2020/01/24
%
% Author: Jake Merkl
% Input: No Input
% Output: A matrix that is sorted and stats about such matrix
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___Jake Merkl_______
%############################################################################

Arr = [3.1 5.8 6.3 2.6 2.1 7.0 5.0 8.2 4.2]; %given array
Arrsize=size(Arr);
disp("Size Of Array: ")             %Stats of graph below
disp(Arrsize)
disp("Min: ")
Arrmin=min(Arr);
disp(Arrmin)
disp("Max: ")
Arrmax=max(Arr);
disp(Arrmax)
disp("Mean: ")
Arrmean=mean(Arr);
disp(Arrmean)
disp("Median: ")
Arrmedian=median(Arr, 'all');
disp(Arrmean)
disp("Standard Deviation: ")
s=std(Arr);
Arrstd=s(:,1);                 
disp(Arrstd)                            % to display the whole std of matrix
disp("Sorted Array (min to max): ")             
sortedArr = sort(Arr);                  %sort array
disp(sortedArr)




