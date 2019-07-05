clc;clear;close all;
im=logical(zeros(800,800));
im(200:600,200:600)=1;
figure('Name','Black and white image ');imshow(im);
b=ones(3,3);
c=[1 1 1;1 1 1;0 0 0];
d=[0 0 0;0 0 0;1 1 1];
t=bwhitmiss(im,c,d); %or bwmorph(im,operation)
figure('Name','h&m transform');imshow(t);