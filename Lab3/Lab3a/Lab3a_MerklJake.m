%############################################################################
% <HW 3>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description:----
% Due date: 2020/01/31
%
% Author: Jake Merkl
% Input: ----
% Output: ----
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___Jake Merkl_______
%############################################################################

function Plotxls(a)
x=(:,100);
ReadFromFile = xlsread(a,'A1:D10');
x=linspace(0,100,1000);
y=ReadFromFile;
plot(x,y)
end