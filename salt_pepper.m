clc ;clear;close all;
im=imread('batman.jpg');
figure;imshow(im);    %original image
k=imnoise(im,'salt & pepper',0.01);
b=1/49*ones(7,7);
f=imfilter(k,b);
figure;imshow(k);   %salt & pepper image
figure;imshow(f);   %mean filter
[m,n,p]=size(k);
t=uint8(ones(m,n,3));
t=medfilt3(k);

figure;imshow(t); title('MEDIAN FILTER'); %median filter