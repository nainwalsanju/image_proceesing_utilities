%uses for shape detection
%2 structural element
% (A erosion C) intersection (A' erosion B)
% C union D = B
% C intersection D = NULL
% C= 1 1 1,1 1 1,0 0 0     and D= 0 0 0,0 0 0,1 1 1 or 0 0 0,0 0 0,1 0 1
clc;clear;close all;
im=im2bw(imread('batman.jpg'));
figure('Name','Black and white image ');imshow(im);
b=ones(3,3);
c=[1 1 1;1 1 1;0 0 0];
d=[0 0 0;0 0 0;1 1 1];
im_inv = 1-im;
im_inv=im2bw(im_inv);
figure('Name','compliment of image ');imshow(im_inv);
k=imerode(im,c);
figure('Name','im erode c ');imshow(k);
t=imerode(im_inv,d);
figure('Name','im_inv erode d ');imshow(t);
[x,y]=size(im);
out=zeros(x,y);
for i=1:x
    for j=1:y
        if k(i,j)==1 && t(i,j)==1
            out(i,j)=1;
        end
    end
end
figure('Name','h&m transform');imshow(out);

