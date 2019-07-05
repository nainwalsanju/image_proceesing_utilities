clear; close all;clc;
im=imread('j.jpg');
im=im2bw(im);
b=ones(50,50);
k=imdilate(im,b);
k=imerode(k,b);
figure('name','original image');imshow(im);
figure('name','closing image');imshow(k);