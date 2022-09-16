%Brightness
clear all;
clc;
a = imread('gbku.jpg')
c = 255 - a;
figure, imshow(a);
figure, imshow(c);
figure, imhist(a);
figure, imhist(c);