%zero surrounded by 1 
%low values surrounded by high value
clc;clear;close all;
im=im2bw(imread('coin5.jpg'));
figure('Name','Original image');imshow(im);
k=imfill(im,'holes');
t=bwmorph(k,'thicken',Inf);
figure('Name','THICKEN IMAGE');
imshow(t);
t=bwmorph(k,'thin',Inf);
figure('Name','THIN IMAGE');
imshow(t);
c=bwconncomp(im);
c