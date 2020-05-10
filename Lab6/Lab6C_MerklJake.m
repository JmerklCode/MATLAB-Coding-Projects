%############################################################################
% <Lab 6a>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: To use poisson graphing to graph 1000 random numbers
% Due date: 2020/03/06
%
% Author: Jake Merkl
% Input: None
% Output: Outputs Graph of random numbers normalization in poisson form
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___Jake Merkl_______
%############################################################################

function Lab6C_MerklJake

p = poissrnd(5, 1, 1000);
hold on
histogram(p,'Normalization', 'Probability') %Using histogram to eliminate bar
plot(1:13, poisspdf(1:13, 5)) %Plotting probability
hold off
legend('Experimental Distribution', 'Actual Poisson Distribution') %Graphing conventions
xlabel('Value')
ylabel('Probability')
end