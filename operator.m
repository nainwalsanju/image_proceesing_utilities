clc ;clear;close all;
im=imread('SANJ.jpg');
b1=[-1,0,1;-1,0,1;-1,0,1]; %vertical prewit operator
k1=imfilter(im,b1);
figure;imshow(k1);
b2=[1,1,1;0,0,0;-1,-1,-1];  %horizontal prewit operator
k2=imfilter(im,b2);
figure;imshow(k2);
b3=[0,1,1;-1,0,0;-1,-1,0];  % primary diagonal prewit operator
k3=imfilter(im,b3);
figure;imshow(k3);
b4=[1 1 0;1 0 -1;0 -1 -1];  % secondary diagonal prewit operator
k4=imfilter(im,b4);
figure;imshow(k4);

s=[-1 0 1;-2 0 2;-1 0 1];  %sobel filter
s1=imfilter(im,s);
figure;imshow(s1);
edge1=[1,1,1;1,-8,1;1,1,1];  %edge
e1=imfilter(im,edge1);
figure;imshow(e1);

edge2= -edge1;
e2=imfilter(im,edge2);
figure;imshow(e2);



figure('Name','all edges');imshow(k1+k2+k3+k4);