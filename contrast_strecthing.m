clc;clear;close all;
img=imread('subject1.jpg');
figure('Name','Grayscal image');imshow(img);
[x,y]=size(img);
d=max(img(:));
c=min(img(:));
b=255;
a=1;
m=(b-a)/(d-c);
figure;histogram(img);
% nomral contrast stretching
% P.OUT = A+P.INPUT*(B-A)/(D-C)
for i=1:x  
   for j=1:y
     img(i,j)=a+(img(i,j)-c)*m;      
   end
end


figure('Name','IMAGE AFTER OPREATIOn');imshow(img);
figure;
histogram(img);
