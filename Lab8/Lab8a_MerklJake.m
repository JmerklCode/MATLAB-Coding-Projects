%############################################################################
% <Lab 8a>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description:  Use bisection method and calculate error
% Due date: 2020/03/20
%
% Author: Jake Merkl
% Input: No input
% Output: Error and roots
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___Jake Merkl_______
%############################################################################

function Lab8a_MerklJake()

a = 1;              %Variable declaration
b = 3;
c = (a+b)/2;
polynomial = [1 0 0 -4]; %x^3-4
z = roots(polynomial);
itteration = 0;

while (abs(c.^3-4) > 0.1)  %While loop for bisection method
if (sign(a.^3-4)==sign(c.^3-4))
a = c;
else
b = c;
end

itteration = itteration + 1;        %Another variable declaration
c = (a+b)/2;
ERR = abs(z(3,1)-c);
percERR = ERR./z.*100;

fprintf('Approximation of itteration %d', itteration)   %Output statements
disp(c)
fprintf('error in approximation itteration %d: ', itteration)
disp(ERR)
fprintf('Percent error of itteration %d', itteration)
disp(percERR(3,1))
end %(End bisection method)

disp('Final approx answer:' )   %Final results
disp(c)
disp('Real Answer: ')
disp(z(3,1))
disp('Percent error final: ')
disp(percERR(3,1))

end
