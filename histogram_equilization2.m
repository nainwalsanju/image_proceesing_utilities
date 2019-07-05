clc;clear;close all;
pkg load image;
img=rgb2gray(imread('subject1.jpg'));
figure('Name','Grayscal image');imshow(img);figure;imhist(img);
n=zeros(1,255);
cf=zeros(1,255);
[x,y]=size(img);
for i=1:x
    for j=1:y
        n(1,img(i,j))=n(1,img(i,j))+1;
    end
end
cf(1,1)=n(1,1);
for i=2:255
        cf(1,i)=cf(1,i-1)+n(1,i);
end
cfmin=min(cf(1,:));
L=255;
z=x*y;
z=z-1;
for i=1:x
    for j=1:y
        img(i,j)=uint8((cf(1,img(i,j))-cfmin)*L/z);
    end
end
figure('Name','Image after imhist equilization');imshow(img);figure;imhist(img);