%############################################################################
% <Lab 9c>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: Integrate a function
% Due date: 27/03/2020
%
% Author: Jake Merkl
% Input: NO INPUT
% Output: Time taken to integrate and integration of function
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___Jake Merkl_______
%############################################################################

function Lab9c_MerklJake()

f = @(x) sin(x).*tan(x);  %Function declaration
tic  %Time start
fintegral = integral(f,0,1); %Integral integration
toc  %Time stop
disp("Integral of (1+x^2)^(3/2) between 0 and 1 using the integral function is: ")
disp(fintegral) %display results

tic
fcotes=cotes(f,0,1,20,8); %Cotes integration
toc
disp("Integral of (1+x^2)^(3/2) between 0 and 1 using the cotes function is")
disp(fcotes)

%Observational analysis
disp("Real answer: 1.56795196...")
disp("It seems that of the above functions, the cotes function works quicker than the integral function")
disp("with both having the same numerical results.")
disp("Run script multiple times to see proof")

end