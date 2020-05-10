%############################################################################
% <Lab 10>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% ENSC 180 / Lab 10 / © H.H.Tsang
% Description: Practice image processing
% Due date: 2020/04/03
%
% Author: Jake Merkl
% Input: NONE
% Output: A lot of images
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here:Jake Merkl
%############################################################################
clear
clc
clf('reset')
%% ------------- Task 1 -------------
X = imread('4.1.04.tiff');              %Read Image
X = double(X);                          %Convert to double
Y = wextend('2D', 'sym', X, [1,1]);     %Make image have one more row of pixels on each side
[r,c,p] = size(Y);                      %Get size plus colour values
NewY = zeros(r-2,c-2,p);
for k = 1:p
 for i = 2:r-1
    for j = 2:c-1
        b = 0;                          %Variable for NewImage
        for ii = i-1:i+1
            for jj = j-1:j+1
            b = b+Y(ii,jj,k)./9;        %Averaging Image to blur
            end
        end
        NewY(i-1,j-1,k) = floor(b);     %No decimal numbers in this matrix
    end
 end
end
imshow(uint8(X))                        %Original Image display(X)
figure;
imshow(uint8(NewY))                     %Blurred Image display(X1)

%% ------------- Task 2 -------------
X = imread('4.1.04.tiff');              %Read Image
X = double(X);                          %Convert to double
Y = wextend('2D', 'sym', X, [2,2]);     %Make image have one more row of pixels on each side
[r,c,p] = size(Y);                      %Get size plus colour values
X2 = zeros(r-4,c-4,p);
for k = 1:p
 for i = 3:r-2
    for j = 3:c-2
        b = 0;                          %Variable for NewImage
        for ii = i-2:i+2
            for jj = j-2:j+2
            b = b+Y(ii,jj,k)./25;        %Averaging Image to blur
            end
        end
        X2(i-2,j-2,k) = floor(b);     %No decimal numbers in this matrix
    end
 end
end
figure
imshow(uint8(X2))                     %Blurred Image display

%% ------------- Task 3 -------------

H = fspecial('average',[3 3]);              
X3_1 = imfilter(X, H, 'symmetric', 'same'); %filter average 3x3
M = fspecial('average',[5 5]);
X3_2 = imfilter(X, M, 'symmetric', 'same' );%filter average 5x5
G = fspecial('gaussian', [5 5], 2);
X3_3 = imfilter(X, G, 'symmetric', 'same'); %filter gaussian 5x5
figure;
imshow(uint8(X3_2))                         %display image blur 3x3
figure;
imshow(uint8(X3_3))                         %display 5x5 gaussian image

%% ------------- Task 4 -------------

Xb = X2;  %Blurred image
G = fspecial('gaussian', [5 5], 2);
Xg = imfilter(Xb, G, 'symmetric', 'same'); %filter gaussian 5x5
c = 0.51;                                   %scaling factors
n = 0.65;
v = 0.70;
X4_c = (c./(2.*c-1)).*Xb-((1-c)./(2.*c-1)).*Xg; %scaling factor 0.51
X4_n = (n./(2.*n-1)).*Xb-((1-n)./(2.*n-1)).*Xg; %scaling factor 0.61
X4_v = (v./(2.*v-1)).*Xb-((1-v)./(2.*v-1)).*Xg; %scaling factor 0.70
figure;
imshow(uint8(X4_c))                             %display images
figure;
imshow(uint8(X4_n))
figure;
imshow(uint8(X4_v))

%It seems that around 0.60 the image is quite sharp but as you get to 0.70
%it does not change a whole lot