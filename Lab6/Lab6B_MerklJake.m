%############################################################################
% <Lab 6a>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: Simulate a coin flip nad graph probability of landing on
% heads
% Due date: 2020/03/06
%
% Author: Jake Merkl
% Input: None
% Output: A graph of probability of landing on heads
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___Jake Merkl_______
%############################################################################

function Lab6B_MerklJake()
x = rand(1,5000); %random numbers
y = x>0.5;
flip = char(ones(size(x))); %Coin flip simulation
flip(y) = 'H';
flip(~y) = 'T';
Heads_amt= (flip=='H'); %Compare amount of heads
hold off;
 c = cumsum(Heads_amt);
 jj = 1:5000;
plot(jj, c./jj) %Graph probability
yline(0.5)
legend('Sample Probability', 'Fair coin') %Graphing conventions
xlabel('Number of coin flips')
ylabel('Probability of heads')
end
