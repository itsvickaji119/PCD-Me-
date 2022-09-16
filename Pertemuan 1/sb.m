img = imread('gbku.jpg');
an = imnoise (img, 'gaussian', 0.01);
I = 2.5 * img;
K = 255 - img;
J = img + 60;


ax1 = subplot(3,3,1);imshow(img), title('gambar asli');
ax2 = subplot(3,3,2);imshow(I), title('Kontras');
ax3 = subplot(3,3,3);imshow(K),title('Negatif');

ax4 = subplot(3,3,4);imshow(J), title('Kecerahan');
ax5 = subplot(3,3,5);imshow(img);
ax6 = subplot(3,3,6);imshow(I);

ax7 = subplot(3,3,7);imshow(K);
ax8 = subplot(3,3,8);imshow(J);
ax9 = subplot(3,3,9);imshow(img);