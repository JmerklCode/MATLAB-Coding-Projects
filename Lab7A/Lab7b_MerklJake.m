%############################################################################
% <Lab 7b>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: Practice for graphical interpolation
% Due date: 2020/03/13
%
% Author: Jake Merkl
% Input: None
% Output: A graph with interpolation of raw data using piecewise linear,
% polynomial of degree 5, and spline interpolations.
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___Jake Merkl_______
%############################################################################

function Lab7b_MerklJake()
temperature = [0:8:40]; %Variable declaration
oxygen = [14.621, 11.843, 9.870, 8.418, 7.305, 6.413];
xpoly = [0:0.2:40];

hold on; %To plot raw data with interpolations

plot(temperature, oxygen, 'o') %Linear Interpolation
plot(temperature, oxygen)
xlabel('Temperature (C)')
ylabel('Oxygen (mg/L)')
title('Piecewise Linear Interpolation')
b = interp1(temperature, oxygen, 27);
disp('Piecewise Linear estimate of 27: ') %Numerical analysis
disp(b)

figure;       %Quintic Interpolation
hold on;            
plot(temperature, oxygen, 'o')
y1 = polyfit(temperature,oxygen,5);
Psre1 = polyval(y1,xpoly);
plot(xpoly ,Psre1)
xlabel('Temperature (C)')
ylabel('Oxygen (mg/L)')
title('Quintic Interpolation')
disp('Quintic Interpolation estimate at 27: ') %Numerical analysis
disp(polyval(y1, 27))

figure;     %Spline interpolation
hold on;            
plot(temperature, oxygen, 'o')
pp = interp1(temperature, oxygen, xpoly, 'spline');
plot(xpoly, pp)
xlabel('Temperature (C)')
ylabel('Oxygen (mg/L)')
title('Spline Interpolation')
disp('Spline estimate of 27: ') %Numerical analysis
disp(interp1(temperature, oxygen, 27, 'spline'))
end