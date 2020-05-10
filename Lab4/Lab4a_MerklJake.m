%############################################################################
% <Lab4a>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: Generate a script that displays the magnitude and phase angle in degrees of a complex number
% 
% Due date: 2020/02/07
%
% Author: Jake Merkl
% Input: some complex number
% Output: real, imaginary, phase, and magnitude of this complex number
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___Jake Merkl_______
%############################################################################

function DataOnComplexNumbers

%Declaration of input

z = input("Enter the real part of a complex number: ");
b = input("Enter the imaginary part of a complex number: ");
a = z+b*i;
r = abs(a);
theta_rad = angle(a);
theta_deg = theta_rad.*180./pi;

%just some fun extra commands cause why not for future use maybe

z_EulerRectangleForm = r*exp(i.*theta_rad);  %Can also use z=cos(x)+i*sin(x)
z_conj = conj(a);                            %Just negative imaginary component
real_z = real(a);                            %Our initial input
imaginary_z = imag(a);                       %Our initial secondary input

%Output commands

output1=sprintf("The magnitude and phase of %d + %di is", z,b);
disp(output1)
output2=sprintf("Magnitude = %f Phase angle = %f degrees", r,theta_deg);
disp(output2)
end