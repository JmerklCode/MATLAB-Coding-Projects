%############################################################################
% <HW 2>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: Graph the given functions on the same graph with the
% plotting techniques displayed in class
% Due date: 2020/01/24
%
% Author: Jake Merkl
% Input: NULL
% Output: A graph that is given
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___Jake Merkl_______
%############################################################################

x = linspace(-2*pi,2*pi,1000);
y = cos(tan(x))-tan(cos(x)); %function 1
plot(x,y,'k-')
hold on          %to graph multiple functions
g = exp(-0.2.*x) + (1-cos(2.*x))./(x + (tan(x.^2)).^2); %function 2
plot(x,g,'r-')
f = (1+x./(x-0.5))./(1+(3.1.*x.*exp(-x)+2))./(sin(x)-(cos(x.^3)).^2); %function 3
plot(x,f,'g-')
hold off
xlabel("Angles (radian)")
ylabel("Voltage (V)")
legend('f(x)= cos(tan(x))-tan(cos(x))', 'g(x)=exp(-0.2x) + (1-cos(2x))/(x + (tan(x^2))^2)','h(x)= (1+x/(x-0.5))/(1+(3.1xexp(-x)+2))/(sin(x)-(cos(x^3))^2)')
set(gca, 'XLim', [-2*pi,2*pi])
set(gca, 'YLim', [-50,50])