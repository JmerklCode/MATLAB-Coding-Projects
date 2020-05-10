%############################################################################
% <HW 3a>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description:----
% Due date: 2020/01/31
%
% Author: Jake Merkl
% Input: An excel file given by lab
% Output: plot of 4 graphs related to content within this excel file
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___Jake Merkl_______
%############################################################################

function PlotxlsStock(a)
ReadFromFile = xlsread(a,'B2:B1259'); %Get Input Filename and read it
Open=ReadFromFile;                    %Y-Values taken from the document
arraysizeOpen=length(Open);              %Find the Length of characters
x = linspace(0,arraysizeOpen,arraysizeOpen);%Plot x-axis of size y
figure;
plot(x,Open)
xlabel("Time (days)")               %Graphing Conventions for Open
ylabel("Stock (USD)")
legend('Open')
title('Apple Open Stock Over 5 Years')

figure;
High = xlsread(a, 'C2:C1259');
plot(x,High)
xlabel("Time (days)")               %Graphing Conventions for High
ylabel("Stock (USD)")
legend('High')
title('Apple High Stock Over 5 Years')

figure;
Low = xlsread(a, 'D2:D1259');
plot(x,Low)
xlabel("Time (days)")               %Graphing Conventions for Low
ylabel("Stock (USD)")
legend('Low')
title('Apple Low Stock Over 5 Years')

figure;
Close = xlsread(a, 'E2:E1259');
plot(x,Close)
xlabel("Time (days)")               %Graphing Conventions for Close
ylabel("Stock (USD)")
legend('Close')
title('Apple Close Stock Over 5 Years')

average = (Open+Close)./2;          %Average calculation
xlswrite(a, {'Average'}, 1, 'H1')   %Make sure excel file is closed or it wont write
xlswrite(a,average, 1, 'H2')        %Write to File
end