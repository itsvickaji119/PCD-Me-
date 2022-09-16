clear all;
clc;
a = imread('a11201911963.jpg');
b = imnoise(a, 'gaussian', 0.1, 0.02);

imshow(a), title('Citra Asli');
figure, imshow(b), title('Noise Gaussian');

filter = [1 1 1; 1 1 1; 1 1 1]/9;

b(:,:,1)=uint8(conv2(double(b(:,:,1)),filter,'same'));
b(:,:,2)=uint8(conv2(double(b(:,:,2)),filter,'same'));
b(:,:,3)=uint8(conv2(double(b(:,:,3)),filter,'same'));