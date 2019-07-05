clear; close all;clc;
im=imread('subject1.jpg');
im=im2bw(im);
b=ones(50,50);
k=imerode(im,b);
k=imdilate(k,b);
figure('name','original image');imshow(im);
figure('name','opening image');imshow(k);