%Contras
clear all;
clc;
fi = imread('gbku.jpg');
figure, imshow(fi), title('Gambar Asli');

max = input('Nilai maksimum 0 100...255 = ');
fo = fi+fi*((255-max)/(max+eps));
figure, imshow(fo), title('Hasil Kontras');