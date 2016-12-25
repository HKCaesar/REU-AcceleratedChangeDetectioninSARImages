 %function [A1,B1,C1,D1] = normalizeImageNewNorm(Image, V, V1, V2)
Image=imread('shapes1b.png'); 
V=.3;
V1=.3;
V2=.3;
Imagea=im2double(Image);
 P1= norm(Imagea, 'fro');
 Imagez=Imagea/P1;
 Image=Imagez*255;
 %Image=rgb2gray(Image);
A1 = imnoise(Image, 'speckle', V); 
  A1=A1*255;
 A1=uint8(A1);
B1 = imnoise(Image, 'salt & pepper', V1); 
 B1=B1*255;
B1=uint8(B1);
C1 = imnoise(Image, 'Gaussian', 0, V2); 
 C1=C1*255;
C1=uint8(C1);
D1 = imnoise(Image, 'poisson'); 
  D1=D1*255;
 D1=uint8(D1);
% imshow(D1)
% end
 figure(5)
imshow(A1);
figure(6)
imshow(B1);
figure(7)
imshow(C1);
figure(8)
imshow(D1);
figure(9)
imshow(Image);
% end
