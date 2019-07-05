clc;clear;close all;
img=imread('subject1.jpg');
figure('Name','Grayscal image');imshow(img);
[x,y]=size(img);
d=double(max(img(:)));
c=double(min(img(:)));
b=255;
a=1;
m=(b-a)/(d-c);
figure;histogram(img);

for i=1:x  
   for j=1:y
     img(i,j)=a+(img(i,j)-c)*m;      
   end
end

figure('Name','IMAGE AFTER OPREATIOn');imshow(img);
figure;
histogram(img);
