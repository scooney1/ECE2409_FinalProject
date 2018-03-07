%% Matthew Faller & Sam Cooney
%% ECE 2409 002 Final Project
%% 7 December 2016

%% Images
%% Small Number of Skittles
clc; clear;
load SKIRT.jpg;
I = imread('SKIRT.jpg');
imshow(I);

%% Large Number of Skittles
clc; clear;
load BIGSKIRT.jpg;
I = imread('BIGSKIRT.jpg');
imshow(I);

%% Closer Height
clc; clear;
load CLOSESKIRT.jpg;
I = imread('CLOSESKIRT.jpg');
imshow(I);

%% Image with Object
clc; clear;
load S1.jpg;
I = imread('S1.jpg');
imshow(I);

%% Other Image
clc; clear;
load SR.jpg;
I = imread('SR.jpg');
imshow(I);

%% Part 1 - Regular Image
%% a) Green
clc; clear;
load SKIRT.jpg;
I = imread('SKIRT.jpg');
r = I(:, :, 1);
g = I(:, :, 2);
b = I(:, :, 3);
a = (g-r<26);
b(a) = 0;
g(a) = 0;
r(a) = 0;
I(:,:,1) = r;
I(:,:,2) = g;
I(:,:,3) = b;
imshow(I);
[centers, radii] = imfindcircles(I,[72 80], 'Sensitivity', 0.991);
imshow(I);
h = viscircles(centers,radii);

%% b) Red
clc; clear;
load SKIRT.jpg;
I = imread('SKIRT.jpg');
r = I(:, :, 1);
g = I(:, :, 2);
b = I(:, :, 3);
a = ((r-b<27) | (r-b>76) | (r-g<29) | r>140);
b(a) = 0;
g(a) = 0;
r(a) = 0;
I(:,:,1) = r;
I(:,:,2) = g;
I(:,:,3) = b;
imshow(I);
[centers, radii] = imfindcircles(I,[72 80], 'Sensitivity', 0.991);
imshow(I);
h = viscircles(centers,radii);

%% c) Yellow
clc; clear;
load SKIRT.jpg;
I = imread('SKIRT.jpg');
r = I(:, :, 1);
g = I(:, :, 2);
b = I(:, :, 3);
a = (r<b | g<b | (r-g<17) | (r-b<79) | (g-b<59));
b(a) = 0;
g(a) = 0;
r(a) = 0;
I(:,:,1) = r;
I(:,:,2) = g;
I(:,:,3) = b;
imshow(I);
[centers, radii] = imfindcircles(I,[74 84], 'Sensitivity', 0.991);
imshow(I);
h = viscircles(centers,radii);

%% d) Orange
clc; clear;
load SKIRT.jpg;
I = imread('SKIRT.jpg');
r = I(:, :, 1);
g = I(:, :, 2);
b = I(:, :, 3);
a = (r<g | r<b | (g-b>62) | (r-g<67) | (r-b<75));
b(a) = 0;
g(a) = 0;
r(a) = 0;
I(:,:,1) = r;
I(:,:,2) = g;
I(:,:,3) = b;
imshow(I);
[centers, radii] = imfindcircles(I,[74 82], 'Sensitivity', 0.991);
imshow(I);
h = viscircles(centers,radii);

%% e) Purple
clc; clear;
load SKIRT.jpg;
I = imread('SKIRT.jpg');
r = I(:, :, 1);
g = I(:, :, 2);
b = I(:, :, 3);
a = ((r-b>27) | (r-g>20) | (b-g>17) | r>80 | (g>r));
b(a) = 0;
g(a) = 0;
r(a) = 0;
I(:,:,1) = r;
I(:,:,2) = g;
I(:,:,3) = b;
imshow(I);
[centers, radii] = imfindcircles(I,[72 84], 'Sensitivity', 0.991);
imshow(I);
h = viscircles(centers,radii);

%% Part 2 - Count of Each Color
%% a) Green
clc; clear;
load SKIRT.jpg;
I = imread('SKIRT.jpg');
J = imread('SKIRT.jpg');
r = I(:, :, 1);
g = I(:, :, 2);
b = I(:, :, 3);
a = (g-r<26);
b(a) = 0;
g(a) = 0;
r(a) = 0;
I(:,:,1) = r;
I(:,:,2) = g;
I(:,:,3) = b;
[centers, radii] = imfindcircles(I,[72 80], 'Sensitivity', 0.991);
ans1 = sum(radii>0);
text_str = ['Green Skittles: ', num2str(ans1,'%1.0f')];
RGB = insertText(J,[0 0],text_str, 'TextColor', 'red', 'FontSize', 150);
imshow(RGB);
h = viscircles(centers,radii);

%% b) Red
clc; clear;
load SKIRT.jpg;
I = imread('SKIRT.jpg');
J = imread('SKIRT.jpg');
r = I(:, :, 1);
g = I(:, :, 2);
b = I(:, :, 3);
a = ((r-b<27) | (r-b>76) | (r-g<29) | r>140);
b(a) = 0;
g(a) = 0;
r(a) = 0;
I(:,:,1) = r;
I(:,:,2) = g;
I(:,:,3) = b;
[centers, radii] = imfindcircles(I,[72 80], 'Sensitivity', 0.991);
ans1 = sum(radii>0);
text_str = ['Red Skittles: ', num2str(ans1,'%1.0f')];
RGB = insertText(J,[0 0],text_str, 'TextColor', 'red', 'FontSize', 150);
imshow(RGB);
h = viscircles(centers,radii);

%% c) Yellow
clc; clear;
load SKIRT.jpg;
I = imread('SKIRT.jpg');
J = imread('SKIRT.jpg');
r = I(:, :, 1);
g = I(:, :, 2);
b = I(:, :, 3);
a = (r<b | g<b | (r-g<17) | (r-b<79) | (g-b<59));
b(a) = 0;
g(a) = 0;
r(a) = 0;
I(:,:,1) = r;
I(:,:,2) = g;
I(:,:,3) = b;
[centers, radii] = imfindcircles(I,[74 84], 'Sensitivity', 0.991);
ans1 = sum(radii>0);
text_str = ['Yellow Skittles: ', num2str(ans1,'%1.0f')];
RGB = insertText(J,[0 0],text_str, 'TextColor', 'red', 'FontSize', 150);
imshow(RGB);
h = viscircles(centers,radii);

%% d) Orange
clc; clear;
load SKIRT.jpg;
I = imread('SKIRT.jpg');
J = imread('SKIRT.jpg');
r = I(:, :, 1);
g = I(:, :, 2);
b = I(:, :, 3);
a = (r<g | r<b | (g-b>62) | (r-g<67) | (r-b<75));
b(a) = 0;
g(a) = 0;
r(a) = 0;
I(:,:,1) = r;
I(:,:,2) = g;
I(:,:,3) = b;
[centers, radii] = imfindcircles(I,[74 82], 'Sensitivity', 0.991);
ans1 = sum(radii>0);
text_str = ['Orange Skittles: ', num2str(ans1,'%1.0f')];
RGB = insertText(J,[0 0],text_str, 'TextColor', 'red', 'FontSize', 150);
imshow(RGB);
h = viscircles(centers,radii);

%% e) Purple
clc; clear;
load SKIRT.jpg;
I = imread('SKIRT.jpg');
J = imread('SKIRT.jpg');
r = I(:, :, 1);
g = I(:, :, 2);
b = I(:, :, 3);
a = ((r-b>27) | (r-g>20) | (b-g>17) | r>80 | (g>r));
b(a) = 0;
g(a) = 0;
r(a) = 0;
I(:,:,1) = r;
I(:,:,2) = g;
I(:,:,3) = b;
[centers, radii] = imfindcircles(I,[72 84], 'Sensitivity', 0.991);
ans1 = sum(radii>0);
text_str = ['Purple Skittles: ', num2str(ans1,'%1.0f')];
RGB = insertText(J,[0 0],text_str, 'TextColor', 'red', 'FontSize', 150);
imshow(RGB);
h = viscircles(centers,radii);

%% Part 3 - Shuffled Skittles
%% a) Green
clc; clear;
load BIGSKIRT.jpg;
I = imread('BIGSKIRT.jpg');
J = imread('BIGSKIRT.jpg');
r = I(:, :, 1);
g = I(:, :, 2);
b = I(:, :, 3);
a = (g-r<26);
b(a) = 0;
g(a) = 0;
r(a) = 0;
I(:,:,1) = r;
I(:,:,2) = g;
I(:,:,3) = b;
[centers, radii] = imfindcircles(I,[60 80], 'Sensitivity', 0.9895);
ans1 = sum(radii>0);
text_str = ['Green Skittles: ', num2str(ans1,'%1.0f')];
RGB = insertText(J,[0 0],text_str, 'TextColor', 'red', 'FontSize', 150);
imshow(RGB);
h = viscircles(centers,radii);

%% b) Red
clc; clear;
load BIGSKIRT.jpg;
I = imread('BIGSKIRT.jpg');
J = imread('BIGSKIRT.jpg');
r = I(:, :, 1);
g = I(:, :, 2);
b = I(:, :, 3);
a = ((r-b<27) | (r-b>76) | (r-g<29) | r>140);
b(a) = 0;
g(a) = 0;
r(a) = 0;
I(:,:,1) = r;
I(:,:,2) = g;
I(:,:,3) = b;
[centers, radii] = imfindcircles(I,[60 80], 'Sensitivity', 0.985);
ans1 = sum(radii>0);
text_str = ['Red Skittles: ', num2str(ans1,'%1.0f')];
RGB = insertText(J,[0 0],text_str, 'TextColor', 'red', 'FontSize', 150);
imshow(RGB);
h = viscircles(centers,radii);

%% c) Yellow
clc; clear
load BIGSKIRT.jpg;
I = imread('BIGSKIRT.jpg');
J = imread('BIGSKIRT.jpg');
r = I(:, :, 1);
g = I(:, :, 2);
b = I(:, :, 3);
a = (r<b | g<b | (r-g<17) | (r-b<79) | (g-b<59));
b(a) = 0;
g(a) = 0;
r(a) = 0;
I(:,:,1) = r;
I(:,:,2) = g;
I(:,:,3) = b;
[centers, radii] = imfindcircles(I,[60 80], 'Sensitivity', 0.983);%0.98587);
ans1 = sum(radii>0);
text_str = ['Yellow Skittles: ', num2str(ans1,'%1.0f')];
RGB = insertText(J,[0 0],text_str, 'TextColor', 'red', 'FontSize', 150);
imshow(RGB);
h = viscircles(centers,radii);

%% d) Orange
clc; clear
load BIGSKIRT.jpg;
I = imread('BIGSKIRT.jpg');
J = imread('BIGSKIRT.jpg');
r = I(:, :, 1);
g = I(:, :, 2);
b = I(:, :, 3);
a = (r<g | r<b | (g-b>62) | (r-g<67) | (r-b<75));
b(a) = 0;
g(a) = 0;
r(a) = 0;
I(:,:,1) = r;
I(:,:,2) = g;
I(:,:,3) = b;
[centers, radii] = imfindcircles(I,[60 80],'Sensitivity',0.989);
ans1 = sum(radii>0);
text_str = ['Orange Skittles: ', num2str(ans1,'%1.0f')];
RGB = insertText(J,[0 0],text_str, 'TextColor', 'red', 'FontSize', 150);
imshow(RGB);
h = viscircles(centers,radii);

%% e) Purple
clc; clear
load BIGSKIRT.jpg;
I = imread('BIGSKIRT.jpg');
J = imread('BIGSKIRT.jpg');
r = I(:, :, 1);
g = I(:, :, 2);
b = I(:, :, 3);
a = ((r-b>27) | (r-g>20) | (b-g>17) | r>80 | (g>r));
b(a) = 0;
g(a) = 0;
r(a) = 0;
I(:,:,1) = r;
I(:,:,2) = g;
I(:,:,3) = b;
[centers, radii] = imfindcircles(I,[65 80], 'Sensitivity', 0.985);
ans1 = sum(radii>0);
text_str = ['Purple Skittles: ', num2str(ans1,'%1.0f')];
RGB = insertText(J,[0 0],text_str, 'TextColor', 'red', 'FontSize', 150);
imshow(RGB);
h = viscircles(centers,radii);

%% Part 4 - Closer Height
%% a) Green
clc; clear;
load CLOSESKIRT.jpg;
I = imread('CLOSESKIRT.jpg');
J = imread('CLOSESKIRT.jpg');
r = I(:, :, 1);
g = I(:, :, 2);
b = I(:, :, 3);
a = (g-r<26);
b(a) = 0;
g(a) = 0;
r(a) = 0;
I(:,:,1) = r;
I(:,:,2) = g;
I(:,:,3) = b;
[centers, radii] = imfindcircles(I,[90 100], 'Sensitivity', 0.9895);
ans1 = sum(radii>0);
text_str = ['Green Skittles: ', num2str(ans1,'%1.0f')];
RGB = insertText(J,[0 0],text_str, 'TextColor', 'red', 'FontSize', 150);
imshow(RGB);
h = viscircles(centers,radii);

%% b) Red
clc; clear;
load CLOSESKIRT.jpg;
I = imread('CLOSESKIRT.jpg');
J = imread('CLOSESKIRT.jpg');
r = I(:, :, 1);
g = I(:, :, 2);
b = I(:, :, 3);
a = ((r-b<27) | (r-b>76) | (r-g<29) | r>140);
b(a) = 0;
g(a) = 0;
r(a) = 0;
I(:,:,1) = r;
I(:,:,2) = g;
I(:,:,3) = b;
[centers, radii] = imfindcircles(I,[85 100], 'Sensitivity', 0.985);
ans1 = sum(radii>0);
text_str = ['Red Skittles: ', num2str(ans1,'%1.0f')];
RGB = insertText(J,[0 0],text_str, 'TextColor', 'red', 'FontSize', 150);
imshow(RGB);
h = viscircles(centers,radii);

%% c) Yellow
clc; clear
load CLOSESKIRT.jpg;
I = imread('CLOSESKIRT.jpg');
J = imread('CLOSESKIRT.jpg');
r = I(:, :, 1);
g = I(:, :, 2);
b = I(:, :, 3);
a = (r<b | g<b | r<g | (r-g>72) | (r-b<79) | (g-b<59));
b(a) = 0;
g(a) = 0;
r(a) = 0;
I(:,:,1) = r;
I(:,:,2) = g;
I(:,:,3) = b;
[centers, radii] = imfindcircles(I,[80 100], 'Sensitivity', 0.9809);
ans1 = sum(radii>0);
text_str = ['Yellow Skittles: ', num2str(ans1,'%1.0f')];
RGB = insertText(J,[0 0],text_str, 'TextColor', 'red', 'FontSize', 150);
imshow(RGB);
h = viscircles(centers,radii);

%% d) Orange
clc; clear
load CLOSESKIRT.jpg;
I = imread('CLOSESKIRT.jpg');
J = imread('CLOSESKIRT.jpg');
r = I(:, :, 1);
g = I(:, :, 2);
b = I(:, :, 3);
a = (r<g | r<b | (g-b>62) | (r-g<67) | (r-b<75));
b(a) = 0;
g(a) = 0;
r(a) = 0;
I(:,:,1) = r;
I(:,:,2) = g;
I(:,:,3) = b;
[centers, radii] = imfindcircles(I,[80 100], 'Sensitivity', 0.989);
ans1 = sum(radii>0);
text_str = ['Orange Skittles: ', num2str(ans1,'%1.0f')];
RGB = insertText(J,[0 0],text_str, 'TextColor', 'red', 'FontSize', 150);
imshow(RGB);
h = viscircles(centers,radii);

%% e) Purple
clc; clear
load CLOSESKIRT.jpg;
I = imread('CLOSESKIRT.jpg');
J = imread('CLOSESKIRT.jpg');
r = I(:, :, 1);
g = I(:, :, 2);
b = I(:, :, 3);
a = ((r-b>27) | (r-g>20) | (b-g>17) | r>80 | (g>r));
b(a) = 0;
g(a) = 0;
r(a) = 0;
I(:,:,1) = r;
I(:,:,2) = g;
I(:,:,3) = b;
[centers, radii] = imfindcircles(I,[80 100], 'Sensitivity', 0.987);
ans1 = sum(radii>0);
text_str = ['Purple Skittles: ', num2str(ans1,'%1.0f')];
RGB = insertText(J,[0 0],text_str, 'TextColor', 'red', 'FontSize', 150);
imshow(RGB);
h = viscircles(centers,radii);

%% Part 5 - Image With Object
%% a) Green
clc; clear; close all;
I = imread('S1.jpg');
J = imread('S1.jpg');
r = I(:, :, 1); 
g = I(:, :, 2); 
b = I(:, :, 3);
a = (g-r<26);
r(a) = 0; 
g(a) = 0; 
b(a) = 0;
I(:, :, 1) = r; 
I(:, :, 2) = g; 
I(:, :, 3) = b;
[centers, radii] = imfindcircles(I,[120 160], 'Sensitivity', 0.9895);
ans1 = sum(radii>0);
text_str = ['Green Skittles: ', num2str(ans1,'%1.0f')];
RGB = insertText(J,[0 0],text_str, 'TextColor', 'red', 'FontSize', 150);
imshow(RGB);
h = viscircles(centers,radii);

%% b) Red
clc; clear; close all;
I = imread('S1.jpg');
J = imread('S1.jpg');
r = I(:, :, 1); 
g = I(:, :, 2); 
b = I(:, :, 3);
a = ((r-b<22) | (r-b>96) | (r-g>106) | r>140);
r(a) = 0;
g(a) = 0;
b(a) = 0;
I(:, :, 1) = r;
I(:, :, 2) = g;
I(:, :, 3) = b;
[centers, radii] = imfindcircles(I, [120 160], 'Sensitivity', 0.9815);
ans1 = sum(radii>0);
text_str = ['Red Skittles: ', num2str(ans1,'%1.0f')];
RGB = insertText(J,[0 0],text_str, 'TextColor', 'red', 'FontSize', 150);
imshow(RGB);
h = viscircles(centers,radii);

%% c) Yellow
clc; clear;
load S1.jpg;
I = imread('S1.jpg');
J = imread('S1.jpg');
r = I(:, :, 1);
g = I(:, :, 2);
b = I(:, :, 3);
a = (r<b | g<b | (r-g<17) | (r-b<79) | (g-b<59));
b(a) = 0;
g(a) = 0;
r(a) = 0;
I(:,:,1) = r;
I(:,:,2) = g;
I(:,:,3) = b;
[centers, radii] = imfindcircles(I,[120 160], 'Sensitivity', 0.991);
ans1 = sum(radii>0);
text_str = ['Yellow Skittles: ', num2str(ans1,'%1.0f')];
RGB = insertText(J,[0 0],text_str, 'TextColor', 'red', 'FontSize', 150);
imshow(RGB);
h = viscircles(centers,radii);


%% d) Orange
clc; clear; close all;
I = imread('S1.jpg');
J = imread('S1.jpg');
r = I(:, :, 1); 
g = I(:, :, 2); 
b = I(:, :, 3);
a = (r<g | r<b | (g-b>62) | (r-g<67) | (r-b<75));
r(a) = 0; 
g(a) = 0; 
b(a) = 0;
I(:, :, 1) = r; 
I(:, :, 2) = g; 
I(:, :, 3) = b;
[centers, radii] = imfindcircles(I, [120 160], 'Sensitivity', 0.989);
ans1 = sum(radii>0);
text_str = ['Orange Skittles: ', num2str(ans1,'%1.0f')];
RGB = insertText(J,[0 0],text_str, 'TextColor', 'red', 'FontSize', 150);
imshow(RGB);
h = viscircles(centers, radii);

%% e) Purple
clc; clear;
load S1.jpg;
I = imread('S1.jpg');
J = imread('S1.jpg');
r = I(:, :, 1);
g = I(:, :, 2);
b = I(:, :, 3);
a = ((r-b>27) | (r-g>20) | (b-g>17) | r>80 | (g>r));
b(a) = 0;
g(a) = 0;
r(a) = 0;
I(:,:,1) = r;
I(:,:,2) = g;
I(:,:,3) = b;
[centers, radii] = imfindcircles(I,[120 160], 'Sensitivity', 0.99);
ans1 = sum(radii>0);
text_str = ['Purple Skittles: ', num2str(ans1,'%1.0f')];
RGB = insertText(J,[0 0],text_str, 'TextColor', 'red', 'FontSize', 150);
imshow(RGB);
h = viscircles(centers,radii);

%% Part 6 - Different Image
%% a) Green
clc; clear;
load SR.jpg;
I = imread('SR.jpg');
J = imread('SR.jpg');
r = I(:, :, 1);
g = I(:, :, 2);
b = I(:, :, 3);
a = (g-r<26);
b(a) = 0;
g(a) = 0;
r(a) = 0;
I(:,:,1) = r;
I(:,:,2) = g;
I(:,:,3) = b;
[centers, radii] = imfindcircles(I,[37 40], 'Sensitivity', 0.99258);
ans1 = sum(radii>0);
text_str = ['Green Skittles: ', num2str(ans1,'%1.0f')];
RGB = insertText(J,[0 0],text_str, 'TextColor', 'red', 'FontSize', 40);
imshow(RGB);
h = viscircles(centers,radii);

%% b) Red
clc; clear;
load SR.jpg;
I = imread('SR.jpg');
J = imread('SR.jpg');
r = I(:, :, 1);
g = I(:, :, 2);
b = I(:, :, 3);
a = ((r-b<134 | r-b>199) | (r-g>196) | (b-g>15) | (g-b>10) | b>r | g>r | r>215);
b(a) = 0;
g(a) = 0;
r(a) = 0;
I(:,:,1) = r;
I(:,:,2) = g;
I(:,:,3) = b;
[centers, radii] = imfindcircles(I,[32 40], 'Sensitivity', 0.9809);
ans1 = sum(radii>0);
text_str = ['Red Skittles: ', num2str(ans1,'%1.0f')];
RGB = insertText(J,[0 0],text_str, 'TextColor', 'red', 'FontSize', 40);
imshow(RGB);
h = viscircles(centers,radii);

%% c) Yellow
clc; clear;
load SR.jpg;
I = imread('SR.jpg');
J = imread('SR.jpg');
r = I(:, :, 1);
g = I(:, :, 2);
b = I(:, :, 3);
a = (r<b | g<b | r<g | (r-g>72) | (r-b<79) | (g-b<59));
b(a) = 0;
g(a) = 0;
r(a) = 0;
I(:,:,1) = r;
I(:,:,2) = g;
I(:,:,3) = b;
[centers, radii] = imfindcircles(I,[37 41], 'Sensitivity', 0.991);
ans1 = sum(radii>0);
text_str = ['Yellow Skittles: ', num2str(ans1,'%1.0f')];
RGB = insertText(J,[0 0],text_str, 'TextColor', 'red', 'FontSize', 40);
imshow(RGB);
h = viscircles(centers,radii);

%% d) Orange
clc; clear
load SR.jpg;
I = imread('SR.jpg');
J = imread('SR.jpg');
r = I(:, :, 1);
g = I(:, :, 2);
b = I(:, :, 3);
a =((r<160) | (r-b>255 | r-b<202) | (r-g<29 | r-g>191) | (g-b<16 | g-b>54) | (g>60) | g>r);
b(a) = 0;
g(a) = 0;
r(a) = 0;
I(:,:,1) = r;
I(:,:,2) = g;
I(:,:,3) = b;
[centers, radii] = imfindcircles(I,[35 40],'Sensitivity',0.991);
ans1 = sum(radii>0);
text_str = ['Orange Skittles: ', num2str(ans1,'%1.0f')];
RGB = insertText(J,[0 0],text_str, 'TextColor', 'red', 'FontSize', 40);
imshow(RGB);
h = viscircles(centers,radii);

%% e) Purple
clc; clear;
load SR.jpg;
I = imread('SR.jpg');
J = imread('SR.jpg');
r = I(:, :, 1);
g = I(:, :, 2);
b = I(:, :, 3);
a = ((r-b>74) | (r-g>58) | (b-g>10) | (g-b>20) | r>80 | (g>r));
b(a) = 0;
g(a) = 0;
r(a) = 0;
I(:,:,1) = r;
I(:,:,2) = g;
I(:,:,3) = b;
[centers, radii] = imfindcircles(I,[35 40], 'Sensitivity', 0.991);
ans1 = sum(radii>0);
text_str = ['Purple Skittles: ', num2str(ans1,'%1.0f')];
RGB = insertText(J,[0 0],text_str, 'TextColor', 'red', 'FontSize', 40);
imshow(RGB);
h = viscircles(centers,radii);

%% Part 7 Prof. Image
%% a) Green
clc; clear;
load MySkittles.jpg;
I = imread('MySkittles.jpg');
J = imread('MySkittles.jpg');
r = I(:, :, 1);
g = I(:, :, 2);
b = I(:, :, 3);
a = (g-r<26);
b(a) = 0;
g(a) = 0;
r(a) = 0;
I(:,:,1) = r;
I(:,:,2) = g;
I(:,:,3) = b;
[centers, radii] = imfindcircles(I,[80 100], 'Sensitivity', 0.991);
ans1 = sum(radii>0);
text_str = ['Green Skittles: ', num2str(ans1,'%1.0f')];
RGB = insertText(J,[0 0],text_str, 'TextColor', 'red', 'FontSize', 150);
imshow(RGB);
h = viscircles(centers,radii);

%% b) Red
clc; clear;
load MySkittles.jpg;
I = imread('MySkittles.jpg');
J = imread('MySkittles.jpg');
r = I(:, :, 1);
g = I(:, :, 2);
b = I(:, :, 3);
a = ((r-b<27) | (r-b>76) | (r-g<29) | r>140);
b(a) = 0;
g(a) = 0;
r(a) = 0;
I(:,:,1) = r;
I(:,:,2) = g;
I(:,:,3) = b;
[centers, radii] = imfindcircles(I,[80 100], 'Sensitivity', 0.991);
ans1 = sum(radii>0);
text_str = ['Red Skittles: ', num2str(ans1,'%1.0f')];
RGB = insertText(J,[0 0],text_str, 'TextColor', 'red', 'FontSize', 150);
imshow(RGB);
h = viscircles(centers,radii);

%% c) Yellow
clc; clear;
load MySkittles.jpg;
I = imread('MySkittles.jpg');
J = imread('MySkittles.jpg');
r = I(:, :, 1);
g = I(:, :, 2);
b = I(:, :, 3);
a = (r<b | g<b | (r-g<17) | (r-b<79) | (g-b<59));
b(a) = 0;
g(a) = 0;
r(a) = 0;
I(:,:,1) = r;
I(:,:,2) = g;
I(:,:,3) = b;
[centers, radii] = imfindcircles(I,[80 100], 'Sensitivity', 0.991);
ans1 = sum(radii>0);
text_str = ['Yellow Skittles: ', num2str(ans1,'%1.0f')];
RGB = insertText(J,[0 0],text_str, 'TextColor', 'red', 'FontSize', 150);
imshow(RGB);
h = viscircles(centers,radii);

%% d) Orange
clc; clear;
load MySkittles.jpg;
I = imread('MySkittles.jpg');
J = imread('MySkittles.jpg');
r = I(:, :, 1);
g = I(:, :, 2);
b = I(:, :, 3);
a = (r<g | r<b | (g-b>62) | (r-g<67) | (r-b<75));
b(a) = 0;
g(a) = 0;
r(a) = 0;
I(:,:,1) = r;
I(:,:,2) = g;
I(:,:,3) = b;
[centers, radii] = imfindcircles(I,[80 100], 'Sensitivity', 0.991);
ans1 = sum(radii>0);
text_str = ['Orange Skittles: ', num2str(ans1,'%1.0f')];
RGB = insertText(J,[0 0],text_str, 'TextColor', 'red', 'FontSize', 150);
imshow(RGB);
h = viscircles(centers,radii);

%% e) Purple
clc; clear;
load MySkittles.jpg;
I = imread('MySkittles.jpg');
J = imread('MySkittles.jpg');
r = I(:, :, 1);
g = I(:, :, 2);
b = I(:, :, 3);
a = ((r-b>27) | (r-g>20) | (b-g>17) | r>80 | (g>r));
b(a) = 0;
g(a) = 0;
r(a) = 0;
I(:,:,1) = r;
I(:,:,2) = g;
I(:,:,3) = b;
[centers, radii] = imfindcircles(I,[80 100], 'Sensitivity', 0.991);
ans1 = sum(radii>0);
text_str = ['Purple Skittles: ', num2str(ans1,'%1.0f')];
RGB = insertText(J,[0 0],text_str, 'TextColor', 'red', 'FontSize', 150);
imshow(RGB);
h = viscircles(centers,radii);

