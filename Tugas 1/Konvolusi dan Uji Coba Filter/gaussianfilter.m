clear all;
clc;
a = imread('a11201911963.jpg');
b = imnoise(a, 'gaussian', 0.1, 0.02);
imshow(a);
figure, imshow(b), title('Noise Gaussian');
filter = [55 71 55; 71 91 71; 55 71 55]/595;
b(:,:,1)=uint8(conv2(double(b(:,:,1)),filter,'same'));
b(:,:,2)=uint8(conv2(double(b(:,:,2)),filter,'same'));
b(:,:,3)=uint8(conv2(double(b(:,:,3)),filter,'same'));
figure, imshow(b)