
clc;clear;close all;
img=imread('eye.jpg');
figure('Name','Grayscal image');imshow(img);figure;imhist(img);

img=histeq(img);
figure('Name','IMAGE AFTER OPREATIOn');imshow(img);
figure;imhist(img);
