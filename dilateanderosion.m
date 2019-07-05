clc;clear all;close all;
im=imread('j.jpg');
im=im2bw(im);
b=ones(50,50);
k=imdilate(im,b);
figure('name','original image');imshow(im);
figure('name','dilated image');imshow(k);
t=imerode(im,b);
figure('name','eroded image');imshow(t);