%############################################################################
% <Lab 7a>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: Practice for graphical interpolation
% Due date: 2020/03/13
%
% Author: Jake Merkl
% Input: None
% Output: A graph with polynomial interpolation of degrees 1-4
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___Jake Merkl_______
%############################################################################

function Lab7A_MerklJake()
%Variable declaration
v = [1:6];
Psre = [2494,1247,831,623,499,416];
estimates = [1:0.2:6];

hold on;
%Plot for initial data
plot(v,Psre, 'o')

%For loop for polynomial fitting
for ii=[1:4]
y1 = polyfit(v,Psre,ii);
Psre1 = polyval(y1,estimates);
plot(estimates,Psre1)
end

%graphing conventions
xlabel('Volume (meters cubed)')
ylabel('Pressure (Kpa) when I = 300K')
title('Interpolated Data')

legend('Raw Data','Polynomial n=1', 'Polynomial n=2', 'Polynomial n=3', 'Polynomial n=4') 

%The highest order polynomial is most effective, which in this case is the
%4th degree polynomial.

end
