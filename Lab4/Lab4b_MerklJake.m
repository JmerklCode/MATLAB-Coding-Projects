%############################################################################
% <Lab4b>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: Add two sinusodal functions
% 
% Due date: 2020/02/07
%
% Author: Jake Merkl
% Input: Some 2 amplitudes, and some 2 angles
% Output: The phasor and graph of the function
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___Jake Merkl_______
%############################################################################

function [A3,phi3] = PhasorAdd(A1,phi1,A2,phi2)
% Usage [A3,phi3] = PhasorAdd(A1,phi1,A2,phi2)
% Calculates the phasor for the sum of two phasors.
% A1, phi1 = magnitude and phase shift in radians of 1st sine
% A2, phi2 = magnitude and phase shift in radians of 2nd sine wave
% A3, phi3 = magnitude and phase shift of sum of sinusoids
% Calculate the phasor sum.
% Find the magnitude of the phasor for the sum.

A3 = sqrt((A1.*cos(phi1)+(A2.*cos(phi2))).^2+(A1.*sin(phi1)+A2.*sin(phi2)).^2);

% Find the phase angle of the phasor for the sum.
phi3 = atan((A1.*sin(phi1)+A2.*sin(phi2))/(A1.*cos(phi1)+A2.*cos(phi2)));
x = linspace(-pi./200,pi./200,100);
y = A3.*cos(200.*pi.*x + phi3);
%Graphing Conventions
plot(x,y)
ylabel('Amplitude')
xlabel('Time')
title('Phasor Sum')
xlim([-pi/200,pi/200])
ylim([-10.5,10])
end