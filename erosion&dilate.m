clear; close all;clc;
im=logical(zeros(800,800));
im(200:600,200:600)=1;
b=ones(100,100);
k=imdilate(im,b);
figure('name','original image');imshow(im);
figure('name','dilated image');imshow(k);
t=imerode(im,b);
figure('name','eroded image');imshow(t);