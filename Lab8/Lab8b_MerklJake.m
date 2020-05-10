%############################################################################
% <Lab 8b>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description:  Use newton rhapson method to approximate roots and plot
% Due date: 2020/03/20
%
% Author: Jake Merkl
% Input: No input
% Output: Graph of function and roots
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___Jake Merkl_______
%############################################################################

function Lab8b_MerklJake()

%Variable declaration
Rroot = 3;
Xin=3.4;

for ii=[1:3]
    
    %This is newtons method in a for loop
    Approx = Xin - tanh(Xin.^2-9)./((sech(Xin.^2-9)).^2.*2.*(Xin));
    Xin = Approx;   %The Xin of the next loop
    y(ii,1)= Approx; %Store values into a variable
   
end
plot(y, '-o') %Plot each point of the itteration
%Answers to initial questions
disp('The real root is:')
disp(Rroot)
disp('The Approximated root is: ')
disp(Approx)
disp('The Approximation seems to diverge from the real root')
end