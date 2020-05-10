%############################################################################
% <Lab4a>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: -----
% 
% Due date: 2020/02/07
%
% Author: Jake Merkl
% Input: ------
% Output: ------
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___Jake Merkl_______
%############################################################################

function Something_Imaginary(a)
r = abs(a);
theta_rad = angle(a);
theta_deg = theta_rad.*180./pi;
z_EulerRectangleForm = r*exp(i.*theta_rad);  %Can also use z=cos(x)+i*sin(x)
z_conj = conj(a);
real_z = real(a);
imaginary_z = imag(a);
x = meshgrid(-10:1/10:10);
y = x^2+8;
z = mesh(x,y)
end