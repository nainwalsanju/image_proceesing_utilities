clear; close all;clc;
im=im2bw(imread('batman.jpg'));
figure('Name','Black and white image ');imshow(im);
b=ones(3,3);
c=[1 1 1;1 1 1;0 0 0];
d=[0 0 0;0 0 0;1 1 1];
t=bwhitmiss(im,c,d); %or bwmorph(im,operation)
im=imerode(im,t);
figure('Name','thinning');imshow(t);